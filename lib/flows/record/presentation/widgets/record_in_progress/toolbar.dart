import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';
import 'package:teleprompter/flows/record/presentation/widgets/record_in_progress/pause_btn.dart';
import 'package:teleprompter/flows/record/presentation/widgets/record_in_progress/record_video_btn.dart';
import 'package:teleprompter/flows/record/presentation/widgets/record_in_progress/switch_camera_btn.dart';

class RecordingToolbar extends StatelessWidget {
  const RecordingToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordCubit, RecordState>(
      buildWhen: (p, c) => p.isLoading != c.isLoading,
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Pause
                PauseRecordingButton(),

                // Stop recording
                RecordVideoButton(),

                // Switch Camera
                SwitchCameraButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
