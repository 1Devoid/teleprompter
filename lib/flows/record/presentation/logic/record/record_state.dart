part of 'record_cubit.dart';

enum RecordStatus { init, loading, success, failure }

class RecordState extends Equatable {
  const RecordState({
    this.status = RecordStatus.init,
    this.cameras = const [],
    this.selectedCamera,
    this.isRecording = false,
    this.recordingTime = '00:00:00',
    this.scrollTimeMill = 0,
    this.currentScroll = 0.0,
    this.errorMessage,
  });

  final RecordStatus status;
  final List<CameraDescription> cameras;
  final CameraDescription? selectedCamera;
  final bool isRecording;
  final String recordingTime;
  final int scrollTimeMill; // scroll duration in milliseconds
  final double currentScroll;
  final String? errorMessage;

  bool get isLoading => status == RecordStatus.loading;

  CameraDescription? get _nextCamera {
    late final length = cameras.length;

    if (cameras.isEmpty || selectedCamera == null) return null;
    if (length == 1) return cameras.first;

    // -1 can't be here, because we always get [selectedCamera] from [cameras]
    final currCameraIndex = cameras.indexOf(selectedCamera!);
    final nextIndex = currCameraIndex + 1 == length ? 0 : currCameraIndex + 1;

    return cameras[nextIndex];
  }

  RecordState copyWith({
    RecordStatus? status,
    List<CameraDescription>? cameras,
    int? scrollTimeMill,
    double? currentScroll,
    CameraDescription? selectedCamera,
    bool? isRecording,
    String? recordingTime,
    String? errorMessage,
  }) {
    return RecordState(
      status: status ?? this.status,
      cameras: cameras ?? this.cameras,
      currentScroll: currentScroll ?? this.currentScroll,
      scrollTimeMill: scrollTimeMill ?? this.scrollTimeMill,
      selectedCamera: selectedCamera ?? this.selectedCamera,
      isRecording: isRecording ?? this.isRecording,
      recordingTime: recordingTime ?? this.recordingTime,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    cameras,
    currentScroll,
    scrollTimeMill,
    selectedCamera,
    isRecording,
    recordingTime,
    errorMessage,
  ];
}
