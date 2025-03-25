part of 'record_cubit.dart';

enum RecordStatus {init, loading, success, failure}

class RecordState extends Equatable {
  const RecordState({
    this.status = RecordStatus.init,
    this.cameras = const [],
    this.selectedCamera = 0,
    this.scrollSpeed = 0.0,
    this.scrollTimeMill = 0,
    this.currentScroll = 0.0,
    this.errorMessage,
  });

  final RecordStatus status;
  final List<CameraDescription> cameras;
  final int selectedCamera;
  final double scrollSpeed;
  final int scrollTimeMill; // duration in milliseconds
  final double currentScroll;
  final String? errorMessage;

  bool get isLoading => status == RecordStatus.loading;

  RecordState copyWith({
    RecordStatus? status,
    List<CameraDescription>? cameras,
    double? scrollSpeed,
    int? scrollTimeMill,
    double? currentScroll,
    int? selectedCamera,
    String? errorMessage
  }){
    return RecordState(
      status: status ?? this.status,
      cameras: cameras ?? this.cameras,
      scrollSpeed: scrollSpeed ?? this.scrollSpeed,
      currentScroll: currentScroll ?? this.currentScroll,
      scrollTimeMill: scrollTimeMill ?? this.scrollTimeMill,
      selectedCamera: selectedCamera ?? this.selectedCamera,
      errorMessage: errorMessage ?? this.errorMessage
    );
  }

  @override
  List<Object?> get props => [status, cameras, errorMessage];
}