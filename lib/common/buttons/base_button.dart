import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_loader.dart';
import 'package:teleprompter/common/buttons/enums/btn_type.dart';
import 'package:teleprompter/common/buttons/logic/app_btn_cubit.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.type,
    this.isLoading = false,
    this.enable = true,
    this.isBig = false,
    this.leftIconPath,
    this.rightIconPath,
  });

  final String title;
  final VoidCallback onTap;
  final ButtonType type;
  final bool isLoading;
  final bool enable;
  final bool isBig;
  final String? leftIconPath;
  final String? rightIconPath;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppButtonCubit(),
      child: _BaseButton(
        onTap: onTap,
        title: title,
        isLoading: isLoading,
        enable: enable,
        type: type,
        isBig: isBig,
        leftIconPath: leftIconPath,
        rightIconPath: rightIconPath,
      ),
    );
  }
}

class _BaseButton extends StatelessWidget {
  const _BaseButton({
    required this.title,
    required this.onTap,
    required this.type,
    required this.isLoading,
    required this.enable,
    required this.isBig,
    required this.leftIconPath,
    required this.rightIconPath,
  });

  final String title;
  final VoidCallback onTap;
  final ButtonType type;
  final bool isLoading;
  final bool enable;
  final bool isBig;
  final String? leftIconPath;
  final String? rightIconPath;

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
            height: isBig ? 48.sp : 40.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.sp),
              border: Border.all(
                color:
                    enable == false && isLoading == false
                        ? type.borderDisabledColor
                        : (state
                            ? type.borderPressedColor
                            : type.borderDefaultColor),
                width: 1.sp,
              ),
              color:
                  enable == false && isLoading == false
                      ? type.disabledColor
                      : (state ? type.pressedColor : type.defaultColor),
              gradient:
                  type.pressedColorGradient != null &&
                          state == false &&
                          enable == true
                      ? LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: type.pressedColorGradient!,
                      )
                      : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading) ...[
                  AppLoader(
                    color:
                        enable == false && isLoading == false
                            ? type.iconColorDisabled
                            : (state
                                ? type.iconColorPressed
                                : type.iconColorDefault),
                  ),
                  SizedBox(width: 8.sp),
                ] else if (leftIconPath != null) ...[
                  getIcon(leftIconPath!, state),
                  SizedBox(width: 8.sp),
                ],
                Text(
                  title,
                  style:
                      enable == false && isLoading == false
                          ? type.disabledTextStyle
                          : (state
                              ? type.pressedTextStyle
                              : type.defaultTextStyle),
                  textAlign: TextAlign.center,
                ),
                if (rightIconPath != null) ...[
                  SizedBox(width: 8.sp),
                  getIcon(rightIconPath!, state),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Widget getIcon(String path, bool state) {
    final iconWidget = SvgPicture.asset(
      path,
      height: 24.sp,
      width: 24.sp,
      colorFilter: ColorFilter.mode(
        enable == false && isLoading == false
            ? type.iconColorDisabled
            : (state ? type.iconColorPressed : type.iconColorDefault),
        BlendMode.srcIn,
      ),
    );

    if (type != ButtonType.pText || state == false) return iconWidget;

    return ShaderMask(
      shaderCallback:
          (bounds) => LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: AppColors.shared.linearPrimary,
          ).createShader(bounds),
      child: iconWidget,
    );
  }
}
