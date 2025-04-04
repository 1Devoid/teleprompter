import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teleprompter/flows/record/presentation/enums/record_tool_types.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit() : super(const ProjectState()) {
    _init();
  }

  Future<void> _init() async {
    emit(state.copyWith(status: ProjectStatus.success));
  }

  void changeTextPosition(value) {
    emit(state.copyWith(promptPosition: value));
  }

  void changeFontSize(value) {
    emit(state.copyWith(fontSize: value));
  }

  void changeScrollSpeed(value) {
    emit(state.copyWith(scrollSpeed: value));
  }

  void changeStartPoint(value) {
    emit(state.copyWith(startPoint: value));
  }

  void changeCountdown(value) {
    emit(state.copyWith(countDown: value));
  }

  void setType(RecordToolTypes type, BuildContext context) {
    if (state.toolType == type) {
      emit(
        ProjectState(
          status: ProjectStatus.init,
          countDown: state.countDown,
          fontSize: state.fontSize,
          projectName: state.projectName,
          promptContent: state.promptContent,
          promptPosition: state.promptPosition,
          scrollSpeed: state.scrollSpeed,
          startPoint: state.startPoint,
          toolType: null,
        ),
      );
      return;
    }

    emit(state.copyWith(toolType: type));
  }
}
