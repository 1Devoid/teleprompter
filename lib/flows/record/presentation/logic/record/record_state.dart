part of 'record_cubit.dart';

enum RecordStatus { init, loading, success, failure }

class RecordState extends Equatable {
  const RecordState({
    this.status = RecordStatus.init,
    this.cameras = const [],
    this.selectedCamera = 0,
    this.isRecording = false,
    this.recordingTime = '00:00:00',
    this.scrollTimeMill = 0,
    this.currentScroll = 0.0,
    this.errorMessage,
  });

  final RecordStatus status;
  final List<CameraDescription> cameras;
  final int selectedCamera;
  final bool isRecording;
  final String recordingTime;
  final int scrollTimeMill; // scroll duration in milliseconds
  final double currentScroll;
  final String? errorMessage;

  bool get isLoading => status == RecordStatus.loading;

  RecordState copyWith({
    RecordStatus? status,
    List<CameraDescription>? cameras,
    int? scrollTimeMill,
    double? currentScroll,
    int? selectedCamera,
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
  List<Object?> get props => [status, cameras, errorMessage];
}
