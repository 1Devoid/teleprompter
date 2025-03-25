import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState>{

  ProjectCubit() : super(const ProjectState()){
    _init();
  }

  Future<void> _init() async{
    emit(state.copyWith(status: ProjectStatus.success));
  }

  void changeTextPosition(value){
    emit(state.copyWith(
      promptPosition: value
    ));
  }

  void changeFontSize(value){
    emit(state.copyWith(
        fontSize: value
    ));
  }

  void openToolSlider(String key){
    final updatedToolsState = Map<String, bool>.from(state.toolsState)
      ..updateAll((_, __) => false)
      ..[key] = true;

    emit(state.copyWith(toolsState: updatedToolsState));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}