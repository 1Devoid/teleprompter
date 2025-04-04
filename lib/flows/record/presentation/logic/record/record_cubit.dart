import 'dart:async';

import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/generated/locale_keys.g.dart';

part 'record_state.dart';

class RecordCubit extends Cubit<RecordState> {
  RecordCubit() : super(const RecordState()) {
    _init();
  }

  CameraController? cameraController;
  Timer? _timer;
  int _seconds = 0;

  Future<void> _init() async {
    emit(state.copyWith(status: RecordStatus.loading));

    final cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      cameraController = CameraController(cameras.first, ResolutionPreset.max);

      await cameraController?.initialize();

      emit(
        state.copyWith(
          status: RecordStatus.success,
          cameras: cameras,
          selectedCamera: cameras.firstOrNull,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: RecordStatus.failure,
        errorMessage: LocaleKeys.error_during_searching_camera.tr(),
      ),
    );
  }

  Future<void> switchCamera() async {
    final nextCamera = state._nextCamera;
    if (nextCamera == null) return;

    emit(state.copyWith(status: RecordStatus.loading));
    cameraController = CameraController(nextCamera, ResolutionPreset.max);
    await cameraController?.initialize();
    emit(
      state.copyWith(status: RecordStatus.success, selectedCamera: nextCamera),
    );
  }

  void startRecording() async {
    if (cameraController == null || state.isRecording) return;
    await cameraController!.startVideoRecording();
    _seconds = 0;
    _startTimer();
    emit(state.copyWith(isRecording: true));
  }

  void stopRecording() async {
    if (cameraController == null || state.isRecording == false) return;
    final file = await cameraController!.stopVideoRecording();
    _timer?.cancel();
    emit(state.copyWith(isRecording: false, recordingTime: '00:00:00'));
    debugPrint('Video saved to: ${file.path}');
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _seconds++;
      final hours = (_seconds ~/ 3600).toString().padLeft(2, '0');
      final minutes = ((_seconds % 3600) ~/ 60).toString().padLeft(2, '0');
      final seconds = (_seconds % 60).toString().padLeft(2, '0');
      emit(state.copyWith(recordingTime: '$hours:$minutes:$seconds'));
    });
  }

  @override
  Future<void> close() {
    cameraController?.dispose();
    _timer?.cancel();
    return super.close();
  }
}
