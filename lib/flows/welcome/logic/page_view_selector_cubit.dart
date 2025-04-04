import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/common/app_constants.dart';
import 'package:teleprompter/flows/welcome/presentation/enums/tutorial_page_types.dart';
import 'package:teleprompter/services/managers/shared_pref.dart';
import 'package:teleprompter/services/navigation/app_router.gr.dart';

class PageViewSelectorCubit extends Cubit<int> {
  PageViewSelectorCubit() : super(0);

  final controller = PageController();

  void setIndex(int index) => emit(index);

  void decrement() {
    final index = max(0, state - 1);
    emit(index);

    _animatePageTo(index);
  }

  void increment(BuildContext context) {
    final index = state + 1;

    if (index < TutorialPageTypes.values.length) {
      emit(index);
      _animatePageTo(index);
    } else {
      SharedPrefManager.shared.write(C.welcome, true);
      AutoRouter.of(context).push(const HomeRoute());
    }
  }

  void _animatePageTo(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
