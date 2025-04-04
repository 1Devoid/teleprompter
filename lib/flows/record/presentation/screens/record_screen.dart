import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/hatch_mark.dart';
import 'package:another_xlider/models/hatch_mark_label.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/widgets/sized_box.dart';
import 'package:camera/camera.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_loader.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/record/presentation/widgets/prompt_content_widget.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => RecordCubit(), child: _RecordScreen());
  }
}

class _RecordScreen extends StatelessWidget {
  const _RecordScreen();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProjectCubit>(create: (_) => ProjectCubit()),
        BlocProvider<RecordCubit>(create: (_) => RecordCubit()),
      ],
      child: Scaffold(
        body: BlocBuilder<RecordCubit, RecordState>(
          buildWhen:
              (p, c) => p.isLoading != c.isLoading || p.cameras != c.cameras,
          builder: (context, state) {
            if (state.isLoading) return Center(child: AppLoader());
            final cubit = context.read<RecordCubit>();

            if (cubit.cameraController == null) {
              return Center(
                child: Text(
                  "Camera is not accepted! Check permissions on settings!",
                ),
              );
            }
            return Stack(
              fit: StackFit.expand,
              children: [
                // CAMERA
                if (cubit.cameraController != null &&
                    cubit.cameraController!.value.isInitialized)
                  FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: cubit.cameraController?.value.previewSize?.height,
                      height: cubit.cameraController?.value.previewSize?.width,
                      child: CameraPreview(
                        context.read<RecordCubit>().cameraController!,
                        child: Text(
                          "Text deved",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.sp,
                    horizontal: 20.sp,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(5.sp),
                            ),
                            child: Text(
                              state.recordingTime,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Prompt
                      PromptContent(),
                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 40.0,
                      children: [
                        // Scrolling Speed Slider
                        BlocBuilder<ProjectCubit, ProjectState>(
                          buildWhen: (p, c) => p.isLoading != c.isLoading,
                          builder: (projectContext, projectState) {
                            return FlutterSlider(
                              values: [projectState.scrollSpeed],
                              hatchMark: FlutterSliderHatchMark(
                                density: 0.25,
                                displayLines: true,
                                bigLine: FlutterSliderSizedBox(
                                  height: 45.0,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                smallLine: FlutterSliderSizedBox(
                                  height: 25.0,
                                  width: 1,
                                  decoration: BoxDecoration(color: Colors.grey),
                                ),
                                labelsDistanceFromTrackBar: -70,
                                linesDistanceFromTrackBar: -15,
                                labels: [
                                  FlutterSliderHatchMarkLabel(
                                    percent: 0,
                                    label: Text('0,1x'),
                                  ),
                                  FlutterSliderHatchMarkLabel(
                                    percent: 10,
                                    label: Text('1x'),
                                  ),
                                  FlutterSliderHatchMarkLabel(
                                    percent: 20,
                                    label: Text('2x'),
                                  ),
                                  FlutterSliderHatchMarkLabel(
                                    percent: 40,
                                    label: Text('4x'),
                                  ),
                                  FlutterSliderHatchMarkLabel(
                                    percent: 60,
                                    label: Text('6x'),
                                  ),
                                  FlutterSliderHatchMarkLabel(
                                    percent: 80,
                                    label: Text('8x'),
                                  ),
                                  FlutterSliderHatchMarkLabel(
                                    percent: 100,
                                    label: Text('10x'),
                                  ),
                                ],
                              ),
                              min: 0.0,
                              max: 10,
                              step: FlutterSliderStep(step: 0.1),
                              onDragging: (
                                handlerIndex,
                                lowerValue,
                                upperValue,
                              ) {
                                projectContext
                                    .read<ProjectCubit>()
                                    .changeScrollSpeed(lowerValue);
                              },
                            );
                          },
                        ),

                        // CAMERA INTERACTION BUTTONS
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                              bottom: 45.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Pause
                                IconButton(
                                  iconSize: 30.0,
                                  color: Colors.black,
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.all<Color>(
                                          Colors.white,
                                        ),
                                    shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (!state.isRecording) {
                                      context
                                          .read<RecordCubit>()
                                          .startRecording();
                                    }
                                  },
                                  icon: Icon(Icons.pause),
                                ),

                                // Stop recording
                                IconButton(
                                  iconSize: 35.0,
                                  color:
                                      state.isRecording
                                          ? Colors.green
                                          : Colors.red,
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.all<Color>(
                                          Colors.white,
                                        ),
                                  ),
                                  onPressed: () {
                                    if (state.isRecording) {
                                      context
                                          .read<RecordCubit>()
                                          .stopRecording();
                                    }
                                  },
                                  icon: Icon(Icons.circle),
                                ),
                                IconButton(
                                  iconSize: 30.0,
                                  color: Colors.black,
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.all<Color>(
                                          Colors.white,
                                        ),
                                    shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    context.read<RecordCubit>().switchCamera();
                                  },
                                  icon: Icon(Icons.restart_alt),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
