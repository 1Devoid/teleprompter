import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromptPropertiesSlider extends StatelessWidget{
  const PromptPropertiesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectCubit, ProjectState>(
      builder: (context, state) {
        if(state.toolsState['Position']!)
        {
          return Padding(
            padding: EdgeInsets.all(20.0),
            child:Slider(
              value: state.promptPosition,
              min: -1.0,
              max: 1.25,
              onChanged: (value) => context.read<ProjectCubit>().changeTextPosition(value),
            ),
          );
        }
        if(state.toolsState['Font size']!)
        {
          return Padding(
            padding: EdgeInsets.all(20.0),
            child:Slider(
              value: state.fontSize,
              min: 15,
              max: 30,
              onChanged: (value) => context.read<ProjectCubit>().changeFontSize(value),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}