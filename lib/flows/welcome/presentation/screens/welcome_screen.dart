import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/app/presentation/logic/app/app_cubit.dart';
import 'package:teleprompter/common/app_constants.dart';
import 'package:teleprompter/common/app_styles.dart';
import 'package:teleprompter/flows/welcome/logic/page_view_selector_cubit.dart';
import 'package:teleprompter/flows/welcome/presentation/enums/tutorial_page_types.dart';
import 'package:teleprompter/flows/welcome/presentation/widgets/next_button.dart';
import 'package:teleprompter/flows/welcome/presentation/widgets/page_selector.dart';
import 'package:teleprompter/flows/welcome/presentation/widgets/welcome_slider.dart';
import 'package:teleprompter/services/managers/shared_pref.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageViewSelectorCubit(),
      child: _WelcomeView(),
    );
  }
}

class _WelcomeView extends StatefulWidget {
  const _WelcomeView();

  @override
  State<_WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<_WelcomeView> {
  @override
  Widget build(BuildContext context) {
    const types = TutorialPageTypes.values;

    return BlocBuilder<PageViewSelectorCubit, int>(
      buildWhen: (_, c) => c == 0 || c != 0,
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: Stack(
              children: [
                // Positioned(
                //   top: 120.sp,
                //   left: -30.sp,
                //   child: CircleShape(
                //     width: 145.sp,
                //     height: 145.sp,
                //     gradientBegin: Alignment.bottomLeft,
                //   ),
                // ),
                // Positioned(
                //   top: 20.sp,
                //   right: -90.sp,
                //   child: CircleShape(
                //     width: 240.sp,
                //     height: 240.sp,
                //     gradientBegin: Alignment.bottomLeft,
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 40.sp, bottom: 20.sp),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: WelcomeSlider()),
                      SizedBox(height: 40.sp),
                      PageSelector(),
                      SizedBox(height: 40.sp),
                      NextButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
