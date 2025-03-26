import 'package:flutter/cupertino.dart';
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

  void changeScrollSpeed(value){
    emit(state.copyWith(
      scrollSpeed: value
    ));
  }

  void changeStartPoint(value){
    emit(state.copyWith(

    ));
  }

  void changeCountdown(value){
    emit(state.copyWith(
      countDown: value
    ));
  }

  void openToolSlider(String key) {
    final updatedToolsState = state.toolsState.map((k, v) => MapEntry(k, k == key ? !v : false));

    debugPrint("🛠 openToolSlider: key = $key");
    debugPrint("🔄 Old State: ${state.toolsState[key]}");
    debugPrint("🔄 New State: ${updatedToolsState[key]}");

    emit(state.copyWith(toolsState: updatedToolsState));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}