// import 'package:another_xlider/another_xlider.dart';
// import 'package:another_xlider/models/slider_step.dart';
// import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:teleprompter/flows/record/presentation/widgets/prompt_toolbars/countdown.dart';
// import 'package:teleprompter/flows/record/presentation/widgets/prompt_toolbars/speed_slider.dart';
// import 'package:teleprompter/flows/record/presentation/widgets/prompt_toolbars/start_point.dart';
//
// class PromptPropertiesSlider extends StatelessWidget {
//   const PromptPropertiesSlider({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProjectCubit, ProjectState>(
//       builder: (projectContext, state) {
//         if (state.toolsState['Position']! && state.isToolActive) {
//           return FlutterSlider(
//             values: [state.promptPosition],
//             min: -1.0,
//             max: 1.25,
//             step: FlutterSliderStep(step: 0.05),
//             onDragging:
//                 (handlerIndex, lowerValue, upperValue) => projectContext
//                     .read<ProjectCubit>()
//                     .changeTextPosition(lowerValue),
//           );
//         }
//         if (state.toolsState['Font size']! && state.isToolActive) {
//           return FlutterSlider(
//             values: [state.fontSize],
//             axis: Axis.vertical,
//             rtl: true,
//             min: 10,
//             max: 25,
//             onDragging:
//                 (handlerIndex, lowerValue, upperValue) => projectContext
//                     .read<ProjectCubit>()
//                     .changeFontSize(lowerValue),
//           );
//         }
//         WidgetsBinding.instance.addPostFrameCallback((_) {
//           if (state.toolsState['Speed']! && state.isToolActive) {
//             showModalBottomSheet(
//               context: projectContext,
//               isScrollControlled: true,
//               backgroundColor: Colors.transparent,
//               builder: (bottomSheetContext) {
//                 return SpeedSlider(
//                   projectContext: projectContext,
//                   state: state,
//                 );
//               },
//             );
//           }
//         });
//         WidgetsBinding.instance.addPostFrameCallback((_) {
//           if (state.toolsState['Start point']! && state.isToolActive) {
//             showModalBottomSheet(
//               context: projectContext,
//               isScrollControlled: true,
//               backgroundColor: Colors.transparent,
//               builder: (bottomSheetContext) {
//                 return StartPoint(state: state);
//               },
//             );
//           }
//         });
//         WidgetsBinding.instance.addPostFrameCallback((_) {
//           if (state.toolsState['Count']! && state.isToolActive) {
//             showModalBottomSheet(
//               context: projectContext,
//               isScrollControlled: true,
//               backgroundColor: Colors.transparent,
//               builder: (bottomSheetContext) {
//                 return CountDown(projectContext: projectContext, state: state);
//               },
//             );
//           }
//         });
//         return SizedBox();
//       },
//     );
//   }
// }
