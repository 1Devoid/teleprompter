import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';

class PauseRecordingButton extends StatelessWidget {
  const PauseRecordingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordCubit, RecordState>(
      buildWhen: (p, c) => p.isLoading != c.isLoading,
      builder: (context, state) {
        return IconButton(
          iconSize: 30.0,
          color: Colors.black,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          onPressed: () {
            if (!state.isRecording) {
              context.read<RecordCubit>().startRecording();
            }
          },
          icon: Icon(Icons.pause),
        );
      },
    );
  }
}
