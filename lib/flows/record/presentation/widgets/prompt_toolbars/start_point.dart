import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/common/widgets/bottom_sheet.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';

class StartPoint extends StatelessWidget {
  const StartPoint({super.key, this.projectContext, this.state});

  final BuildContext? projectContext;
  final ProjectState? state;

  @override
  Widget build(BuildContext context) {
    if (projectContext == null || state == null) {
      return const Center(child: Text('Error, while opening'));
    }

    return BottomSheetModal(
      height: MediaQuery.of(context).size.height * 0.35,
      children: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Start point'),
              IconButton(
                onPressed: () {
                  Future.delayed(Duration.zero, () {
                    projectContext!.read<ProjectCubit>().openToolSlider(
                      'Start point',
                    );
                    projectContext!.read<ProjectCubit>().setToolActive(false);
                  });
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          Expanded(
            child: CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hm,
              initialTimerDuration: state!.startPoint,
              onTimerDurationChanged: (Duration newTime) {
                projectContext!.read<ProjectCubit>().changeStartPoint(newTime);
                projectContext!.read<ProjectCubit>().setToolActive(false);
              },
            ),
          ),
          TextButton(
            onPressed: () {
              projectContext!.read<ProjectCubit>().openToolSlider('Count');
              projectContext!.read<ProjectCubit>().setToolActive(false);
              Navigator.of(context).pop();
            },
            child: Text('Set'),
          ),
        ],
      ),
    );
  }
}
