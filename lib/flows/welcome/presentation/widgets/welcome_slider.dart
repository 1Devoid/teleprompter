import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/flows/welcome/logic/page_view_selector_cubit.dart';
import 'package:teleprompter/flows/welcome/presentation/enums/tutorial_page_types.dart';
import 'package:teleprompter/common/app_constants.dart';
import 'package:teleprompter/common/app_styles.dart';

class WelcomeSlider extends StatelessWidget {
  const WelcomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: TutorialPageTypes.values.length,
      onPageChanged: context.read<PageViewSelectorCubit>().setIndex,
      controller: context.read<PageViewSelectorCubit>().controller,
      itemBuilder: (context, index) => _Item(TutorialPageTypes.values[index]),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item(this.item);
  final TutorialPageTypes item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: C.leftRightPadding),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white12)),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(item.image, height: 1.0 * 0.35),
          ),
        ),
        SizedBox(height: 40.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: C.leftRightPadding),
          child: Column(
            children: [
              FittedBox(
                child: Text(
                  item.title,
                  style: AppStyles.shared.titleSmallRegular,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
