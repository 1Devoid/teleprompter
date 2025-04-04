import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';

class RecordVideoButton extends StatelessWidget {
  const RecordVideoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordCubit, RecordState>(
      buildWhen:
          (p, c) =>
              p.isLoading != c.isLoading && p.isRecording != c.isRecording,
      builder: (context, state) {
        return IconButton(
          iconSize: 35.0,
          color: state.isRecording ? Colors.green : Colors.red,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () {
            if (!state.isRecording) {
              context.read<RecordCubit>().startRecording();
            } else {
              context.read<RecordCubit>().stopRecording();
            }
          },
          icon: Icon(Icons.circle),
        );
      },
    );
  }
}
