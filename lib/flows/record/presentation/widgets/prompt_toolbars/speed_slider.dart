// import 'package:another_xlider/another_xlider.dart';
// import 'package:another_xlider/models/hatch_mark.dart';
// import 'package:another_xlider/models/hatch_mark_label.dart';
// import 'package:another_xlider/models/slider_step.dart';
// import 'package:another_xlider/widgets/sized_box.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:teleprompter/common/widgets/bottom_sheet.dart';
// import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
//
// class SpeedSlider extends StatelessWidget {
//   const SpeedSlider({super.key, this.projectContext, this.state});
//
//   final BuildContext? projectContext;
//   final ProjectState? state;
//
//   @override
//   Widget build(BuildContext context) {
//     if (projectContext == null || state == null) {
//       return const Center(child: Text('Error, while opening'));
//     }
//
//     return BottomSheetModal(
//       height: MediaQuery.of(context).size.height * 0.2,
//       children: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   projectContext!.read<ProjectCubit>().openToolSlider('Speed');
//                   projectContext!.read<ProjectCubit>().setToolActive(false);
//                   Navigator.of(context).pop();
//                 },
//                 icon: Icon(Icons.close),
//               ),
//             ],
//           ),
//           FlutterSlider(
//             values: [state!.scrollSpeed],
//             hatchMark: FlutterSliderHatchMark(
//               density: 0.25,
//               displayLines: true,
//               bigLine: FlutterSliderSizedBox(
//                 height: 15.0,
//                 width: 2,
//                 decoration: BoxDecoration(color: Colors.black),
//               ),
//               smallLine: FlutterSliderSizedBox(
//                 height: 15.0,
//                 width: 2,
//                 decoration: BoxDecoration(color: Colors.grey),
//               ),
//               labelsDistanceFromTrackBar: -50,
//               linesDistanceFromTrackBar: -10,
//               labels: [
//                 FlutterSliderHatchMarkLabel(percent: 0, label: Text('0,1x')),
//                 FlutterSliderHatchMarkLabel(percent: 20, label: Text('2x')),
//                 FlutterSliderHatchMarkLabel(percent: 40, label: Text('4x')),
//                 FlutterSliderHatchMarkLabel(percent: 60, label: Text('6x')),
//                 FlutterSliderHatchMarkLabel(percent: 80, label: Text('8x')),
//                 FlutterSliderHatchMarkLabel(percent: 100, label: Text('10x')),
//               ],
//             ),
//             min: 0.0,
//             max: 10,
//             step: FlutterSliderStep(step: 0.1),
//             onDragging: (handlerIndex, lowerValue, upperValue) {
//               context.read<ProjectCubit>().changeScrollSpeed(lowerValue);
//               context.read<ProjectCubit>().setToolActive(false);
//             },
//           ),
//         ],
//       ),
//     );
//     ;
//   }
// }
