import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_styles.dart';
import 'package:teleprompter/common/buttons/logic/app_btn_cubit.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.title,
    required this.onTap,
    this.enable = true,
    required this.iconPath,
    required this.isSelected,
  });

  final String title;
  final VoidCallback onTap;
  final bool enable;
  final String iconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppButtonCubit(),
      child: _TabButton(
        onTap: onTap,
        title: title,
        enable: enable,
        iconPath: iconPath,
        isSelected: isSelected,
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.title,
    required this.onTap,
    required this.enable,
    required this.iconPath,
    required this.isSelected,
  });

  final String title;
  final VoidCallback onTap;
  final bool enable;
  final String iconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppButtonCubit>();
    return GestureDetector(
      onTap: enable ? () => onTap() : null,
      onTapDown: (_) => enable ? cubit.setPressed() : null,
      onTapUp: (_) => enable ? cubit.setDefault() : null,
      onPanEnd: (_) => enable ? cubit.setDefault() : null,
      child: BlocBuilder<AppButtonCubit, bool>(
        builder: (context, state) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.sp),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: isSelected ? 0 : 24.sp,
                sigmaY: isSelected ? 0 : 24.sp,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.sp,
                  vertical: 8.sp,
                ),
                decoration: BoxDecoration(
                  color:
                      isSelected ? null : AppColors.shared.bgNeutralSecondary,
                  gradient:
                      isSelected
                          ? LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: AppColors.shared.linearPrimary,
                          )
                          : null,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      iconPath,
                      width: 24.sp,
                      height: 24.sp,
                      colorFilter: ColorFilter.mode(
                        isSelected
                            ? AppColors.shared.onBgPrimary
                            : AppColors.shared.fgPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(height: 8.sp),
                    Text(
                      title,
                      style:
                          isSelected
                              ? AppStyles.shared.labelMdMediumOnBgPrimary
                              : AppStyles.shared.labelMdMediumFgPrimary,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
