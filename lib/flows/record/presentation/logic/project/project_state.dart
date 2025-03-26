part of 'project_cubit.dart';

enum ProjectStatus { init, loading, success, failure }

class ProjectState extends Equatable {
  const ProjectState({
    this.status = ProjectStatus.init,
    this.projectName = 'Empty project',
    this.promptContent = '''Lorem ipsum dolor sit amet consectetur. 
    Vehicula lacus cursus amet adipiscing habitasse pharetra. 
    Faucibus in faucibus sollicitudin proin lectus sed posuere quis. 
    Eu commodo a pretium felis gravida. 
    Felis vel egestas tincidunt sem.''',
    this.toolsState = const {
      'Position': false,
      'Font size': false,
      'Speed': false,
      'Start point': false,
      'Count': false,
    },
    this.isToolActive = true,
    this.promptPosition = 0.0,
    this.fontSize = 15.0,
    this.scrollSpeed = 1.0,
    this.startPoint = const Duration(minutes: 0, seconds: 0),
    this.countDown = 0,
    this.errorMessage,
  });

  final ProjectStatus status;
  final String projectName;
  final String promptContent;
  final Map<String, bool> toolsState;
  final bool isToolActive;
  final double promptPosition;
  final double fontSize;
  final double scrollSpeed;
  final Duration startPoint;
  final int countDown;
  final String? errorMessage;

  bool get isLoading => status == ProjectStatus.loading;

  ProjectState copyWith({
    ProjectStatus? status,
    String? projectName,
    String? promptContent,
    Map<String, bool>? toolsState,
    bool? isToolActive,
    double? promptPosition,
    double? fontSize,
    double? scrollSpeed,
    Duration? startPoint,
    int? countDown,
    String? errorMessage,
  }) {
    return ProjectState(
      status: status ?? this.status,
      projectName: projectName ?? this.projectName,
      promptContent: promptContent ?? this.promptContent,
      toolsState: toolsState ?? this.toolsState,
      isToolActive: isToolActive ?? this.isToolActive,
      promptPosition: promptPosition ?? this.promptPosition,
      fontSize: fontSize ?? this.fontSize,
      scrollSpeed: scrollSpeed ?? this.scrollSpeed,
      startPoint: startPoint ?? this.startPoint,
      countDown: countDown ?? this.countDown,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    projectName,
    promptContent,
    toolsState,
    isToolActive,
    promptPosition,
    fontSize,
    startPoint,
    scrollSpeed,
    countDown,
    errorMessage,
  ];
}
