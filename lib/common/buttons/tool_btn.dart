import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_styles.dart';

class ToolButton extends StatelessWidget {
  const ToolButton({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  final bool isSelected;
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.sp)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: isSelected ? 0 : 24.sp,
            sigmaY: isSelected ? 0 : 24.sp,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 7.sp),
            decoration: BoxDecoration(
              color: isSelected ? null : AppColors.shared.bgNeutralSecondary,
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
                  width: 16.sp,
                  height: 16.sp,
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
      ),
    );
  }
}
