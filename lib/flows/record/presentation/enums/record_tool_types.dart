import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/common/app_resources.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:teleprompter/generated/locale_keys.g.dart';

enum RecordToolTypes { position, fontSize, speed, startPoint, countdown }

extension RecordToolTypesEx on RecordToolTypes {
  String get title {
    switch (this) {
      case RecordToolTypes.position:
        return LocaleKeys.position.tr();
      case RecordToolTypes.fontSize:
        return LocaleKeys.font_size.tr();
      case RecordToolTypes.speed:
        return LocaleKeys.speed.tr();
      case RecordToolTypes.startPoint:
        return LocaleKeys.start_point.tr();
      case RecordToolTypes.countdown:
        return LocaleKeys.countdown.tr();
    }
  }

  String get icon {
    switch (this) {
      case RecordToolTypes.position:
        return AppResources.position;
      case RecordToolTypes.fontSize:
        return AppResources.fontSize;
      case RecordToolTypes.speed:
        return AppResources.speed;
      case RecordToolTypes.startPoint:
        return AppResources.startPoint;
      case RecordToolTypes.countdown:
        return AppResources.countdown;
    }
  }

  void onTap(BuildContext context) {
    // switch (this) {
    //   case RecordToolTypes.position:
    //     context.read<ProjectCubit>().openToolSlider('Position');
    //   case RecordToolTypes.fontSize:
    //     context.read<ProjectCubit>().openToolSlider('Font size');
    //   case RecordToolTypes.speed:
    //     context.read<ProjectCubit>().openToolSlider('Speed');
    //   case RecordToolTypes.startPoint:
    //     context.read<ProjectCubit>().openToolSlider('Start point');
    //   case RecordToolTypes.countdown:
    //     context.read<ProjectCubit>().openToolSlider('Count');
    // }
  }
}
