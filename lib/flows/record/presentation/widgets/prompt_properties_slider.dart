import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/hatch_mark.dart';
import 'package:another_xlider/models/hatch_mark_label.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/widgets/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:teleprompter/common/app_styles.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:teleprompter/common/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromptPropertiesSlider extends StatelessWidget {
  const PromptPropertiesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectCubit, ProjectState>(
      builder: (projectContext, state) {
        if (state.toolsState['Position']!) {
          return FlutterSlider(
            values: [state.promptPosition],
            min: -1.0,
            max: 1.25,
            step: FlutterSliderStep(step: 0.05),
            onDragging: (handlerIndex, lowerValue, upperValue) =>
                projectContext.read<ProjectCubit>().changeTextPosition(lowerValue),
          );
        }
        if (state.toolsState['Font size']!) {
          return FlutterSlider(
            values: [state.fontSize],
            axis: Axis.vertical,
            rtl: true,
            min: 10,
            max: 25,
            onDragging: (handlerIndex, lowerValue, upperValue) =>
                projectContext.read<ProjectCubit>().changeFontSize(lowerValue),
          );
        }
        if (state.toolsState['Speed']!) {
          Future.delayed(Duration.zero, () {
            showModalBottomSheet(
              context: projectContext,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (bottomSheetContext) {
                return BottomSheetModal(
                  height: MediaQuery.of(context).size.height * 0.2,
                  children: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: ()
                            {
                              Future.delayed(Duration.zero, () {
                                if (bottomSheetContext.mounted) {
                                  projectContext.read<ProjectCubit>()
                                      .openToolSlider('Speed');
                                }
                              });
                              Navigator.of(bottomSheetContext).pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                      FlutterSlider(
                        values: [state.scrollSpeed],
                        hatchMark: FlutterSliderHatchMark(
                          density: 0.25,
                          displayLines: true,
                          bigLine: FlutterSliderSizedBox(
                            height: 15.0,
                            width: 2,
                            decoration: BoxDecoration(
                              color: Colors.black
                            )
                          ),
                          smallLine: FlutterSliderSizedBox(
                            height: 15.0,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.grey
                            )
                          ),
                          labelsDistanceFromTrackBar: -50,
                          linesDistanceFromTrackBar: -10,
                          labels: [
                            FlutterSliderHatchMarkLabel(
                              percent: 0,
                              label: Text('0,1x')
                            ),
                            FlutterSliderHatchMarkLabel(
                              percent: 20,
                              label: Text('2x')
                            ),
                            FlutterSliderHatchMarkLabel(
                              percent: 40,
                              label: Text('2x')
                            ),
                            FlutterSliderHatchMarkLabel(
                              percent: 60,
                              label: Text('5x')
                            ),
                            FlutterSliderHatchMarkLabel(
                              percent: 100,
                              label: Text('10x')
                            ),
                          ],
                        ),
                        min: 0.0,
                        max: 10,
                        step: FlutterSliderStep(step: 0.1),
                        onDragging: (handlerIndex, lowerValue, upperValue) =>
                            projectContext.read<ProjectCubit>().changeScrollSpeed(lowerValue),
                      ),
                    ],
                  )
                );
              },
            );
          });
        }
        if (state.toolsState['Start point']!) {
          Future.delayed(Duration.zero, () {
            showModalBottomSheet(
              context: projectContext,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (bottomSheetContext) {
                return BottomSheetModal(
                  height: MediaQuery.of(context).size.height * 0.35,
                  children: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Start point',),
                          IconButton(
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                if (bottomSheetContext.mounted) {
                                  projectContext.read<ProjectCubit>()
                                    .openToolSlider('Start point');
                                }
                              });
                              Navigator.of(bottomSheetContext).pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                      Expanded(
                        child: CupertinoTimerPicker(
                          mode: CupertinoTimerPickerMode.hm,
                          initialTimerDuration: state.startPoint,
                          onTimerDurationChanged: (Duration newTime) {
                            projectContext.read<ProjectCubit>().changeStartPoint(newTime);
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text('Set')
                      ),
                    ],
                  ),
                );
              },
            );
          });
        }
        if (state.toolsState['Count']!) {

          final List<int> times = [0, 1, 2, 3, 5, 10, 15]; /// NOTE: Need to check that

          WidgetsBinding.instance.addPostFrameCallback((_) {
            showModalBottomSheet(
              context: projectContext,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (bottomSheetContext) {
                return BottomSheetModal(
                  height: MediaQuery.of(context).size.height * 0.15,
                  children: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Countdown'),
                          IconButton(
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                if (bottomSheetContext.mounted) {
                                  projectContext.read<ProjectCubit>()
                                      .openToolSlider('Count');
                                }
                              });
                              Navigator.of(bottomSheetContext).pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                      Wrap(
                        spacing: 8.0,
                        children: List.generate(times.length, (index) {
                          final isSelected = state.countDown == times[index];
                          return GestureDetector(
                            onTap: () {
                              Future.delayed(Duration.zero, () {
                                if (bottomSheetContext.mounted) {
                                  projectContext.read<ProjectCubit>()
                                      .changeCountdown(times[index]);
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.blue.shade200 : Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: isSelected ? Colors.blue.shade400 : Colors.grey.shade300,
                                  width: 1.5,
                                ),
                              ),
                              child: Text(
                                "${times[index]}s",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                );
              },
            );
          });
        }
        return SizedBox();
      },
    );
  }
}
