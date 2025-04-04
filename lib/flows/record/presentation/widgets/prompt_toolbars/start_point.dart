// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:teleprompter/common/widgets/bottom_sheet.dart';
// import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
//
// class StartPoint extends StatelessWidget {
//   const StartPoint({super.key, this.state});
//
//   final ProjectState? state;
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomSheetModal(
//       height: 1.sh * 0.35,
//       children: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Start point'),
//               IconButton(
//                 onPressed: () {
//                   Future.delayed(Duration.zero, () {
//                     context.read<ProjectCubit>().openToolSlider('Start point');
//                   });
//                   Navigator.of(context).pop();
//                 },
//                 icon: Icon(Icons.close),
//               ),
//             ],
//           ),
//           Expanded(
//             child: CupertinoTimerPicker(
//               mode: CupertinoTimerPickerMode.hm,
//               initialTimerDuration: state!.startPoint,
//               onTimerDurationChanged: (Duration newTime) {
//                 context.read<ProjectCubit>().changeStartPoint(newTime);
//               },
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               context.read<ProjectCubit>().openToolSlider('Count');
//               Navigator.of(context).pop();
//             },
//             child: Text('Set'),
//           ),
//         ],
//       ),
//     );
//   }
// }
