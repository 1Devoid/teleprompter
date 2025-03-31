import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/flows/welcome/logic/page_view_selector_cubit.dart';
import 'package:teleprompter/flows/welcome/presentation/enums/tutorial_page_types.dart';

class PageSelector extends StatelessWidget {
  const PageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: TutorialPageTypes.values.length,
        separatorBuilder: (_, __) => SizedBox(width: 9.sp),
        itemBuilder: (context, index) => _Item(index),
      ),
    );
  }

  static final size = 8.sp;
  static final bigSize = 23.sp;
}

class _Item extends StatelessWidget {
  const _Item(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageViewSelectorCubit, int>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: state == index ? PageSelector.bigSize : PageSelector.size,
          height: PageSelector.size,
          decoration: BoxDecoration(
            color:
                state == index
                    ? AppColors.shared.blue50
                    : AppColors.shared.white,
            borderRadius: BorderRadius.all(Radius.circular(2.sp)),
          ),
        );
      },
    );
  }
}
