import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_styles.dart';
import 'package:teleprompter/flows/app_tabs/presentation/enums/app_tabs_type.dart';
import 'package:teleprompter/flows/app_tabs/presentation/logic/app_tab_cubit.dart';

class TabItem extends StatelessWidget {
  const TabItem(this.type, {super.key});

  final AppTabsType type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.tabsRouter.setActiveIndex(type.index);
        context.read<AppTabCubit>().setAppTab(type);
      },
      child: BlocBuilder<AppTabCubit, AppTabsType>(
        builder: (context, state) {
          final isSelected = type == state;
          return Container(
            width: 88.sp,
            height: 80.sp,
            padding: EdgeInsets.all(12.sp),
            color: AppColors.shared.transparent,
            child: Column(
              children: [
                SvgPicture.asset(
                  isSelected ? type.iconSelected : type.icon,
                  height: 24.sp,
                  width: 24.sp,
                ),
                SizedBox(height: 4.sp),
                Text(type.title, style: AppStyles.shared.labelMdSemiBold),
              ],
            ),
          );
        },
      ),
    );
  }
}
