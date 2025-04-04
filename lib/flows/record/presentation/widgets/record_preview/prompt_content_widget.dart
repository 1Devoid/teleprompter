import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromptContent extends StatelessWidget{
  const PromptContent({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectCubit, ProjectState>(
      builder: (context, projectState) {
        return Align(
          alignment: Alignment(projectState.promptPosition, 0),
          child: Container(
              margin: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width * 0.5,
              height: 300,
              child: ListView(
                children: [
                  Text(
                    projectState.promptContent,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(blurRadius: 4.0),
                      ],
                      fontSize: projectState.fontSize,
                    ),
                  ),
                ],
              )
          ),
        );
      },
    );
  }
}
