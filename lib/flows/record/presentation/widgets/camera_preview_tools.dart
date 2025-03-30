import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraPreviewTools extends StatelessWidget{
  const CameraPreviewTools({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordCubit, RecordState>(
        buildWhen: (previous, current) =>
        previous.isLoading != current.isLoading ||
            previous.cameras != current.cameras,
      builder: (context, recordState) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty
                      .all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.circle_outlined),
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty
                      .all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: () {
                  context.read<RecordCubit>().switchCamera();
                },
                icon: Icon(Icons.restart_alt),
              ),
            ],
          ),
        );
      });
  }
}