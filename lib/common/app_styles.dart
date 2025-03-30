import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_colors.dart';

class AppStyles {
  static final shared = AppStyles._();

  AppStyles._()
    : headingLgSemiBold = _headingLgSemiBold,
      headingLgRegular = _headingLgRegular,
      headingMdSemiBold = _headingMdSemiBold,
      headingMdRegular = _headingMdRegular,
      headingSmallSemiBold = _headingSmallSemiBold,
      headingSmallRegular = _headingSmallRegular,
      titleLgSemiBold = _titleLgSemiBold,
      titleLgRegular = _titleLgRegular,
      titleMdSemiBold = _titleMdSemiBold,
      titleMdRegular = _titleMdRegular,
      titleMdRegularFgNeutralTertiary = _titleMdRegular.copyWith(
        color: AppColors.shared.fgNeutralTertiary,
      ),
      titleSmallSemiBold = _titleSmallSemiBold,
      titleSmallRegular = _titleSmallRegular,
      labelLgSemiBold = _labelLgSemiBold,
      labelLgSemiBoldOnBgPrimary = _labelLgSemiBold.copyWith(
        color: AppColors.shared.onBgPrimary,
      ),
      labelLgSemiBoldFgPrimary = _labelLgSemiBold.copyWith(
        color: AppColors.shared.fgPrimary,
      ),
      labelLgSemiBoldOnBgNeutralSecondary = _labelLgSemiBold.copyWith(
        color: AppColors.shared.onBgNeutralSecondary,
      ),
      labelLgSemiBoldFgCritical = _labelLgSemiBold.copyWith(
        color: AppColors.shared.fgCritical,
      ),
      labelLgSemiBoldLinerPrimary = _labelLgSemiBoldLinerPrimary,
      labelLgSemiBoldFgCriticalPressed = _labelLgSemiBold.copyWith(
        color: AppColors.shared.fgCriticalPressed,
      ),
      labelLgSemiBoldFgPrimaryFaded = _labelLgSemiBold.copyWith(
        color: AppColors.shared.fgPrimaryFaded,
      ),
      labelLgSemiBoldOnBgNeutralSecondaryFaded = _labelLgSemiBold.copyWith(
        color: AppColors.shared.onBgNeutralSecondaryFaded,
      ),
      labelLgSemiBoldFgNeutralDisabled = _labelLgSemiBold.copyWith(
        color: AppColors.shared.fgNeutralDisabled,
      ),
      labelLgSemiBoldFgCriticalDisabled = _labelLgSemiBold.copyWith(
        color: AppColors.shared.fgCriticalDisabled,
      ),
      labelLgRegular = _labelLgRegular,
      labelMdSemiBold = _labelMdSemiBold,
      labelMdMediumFgPrimary = _labelMdSemiBold.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.shared.fgPrimary,
      ),
      labelMdMediumOnBgPrimary = _labelMdSemiBold.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.shared.onBgPrimary,
      ),
      labelMdRegular = _labelMdRegular,
      labelSmallSemiBold = _labelSmallSemiBold,
      labelSmallRegular = _labelSmallRegular,
      bodyLgSemiBold = _bodyLgSemiBold,
      bodyLgRegular = _bodyLgRegular,
      bodyMdSemiBold = _bodyMdSemiBold,
      bodyMdRegular = _bodyMdRegular,
      bodyMdRegularFgNeutralSecondary = _bodyMdRegular.copyWith(
        color: AppColors.shared.fgNeutralSecondary,
      ),
      bodyMdRegularFgNeutralTertiary = _bodyMdRegular.copyWith(
        color: AppColors.shared.fgNeutralTertiary,
      ),
      bodyMdRegularFgCritical = _bodyMdRegular.copyWith(
        color: AppColors.shared.fgCritical,
      ),
      bodySmallSemiBold = _bodySmallSemiBold,
      bodySmallRegular = _bodySmallRegular;

  final TextStyle headingLgSemiBold;
  final TextStyle headingLgRegular;
  final TextStyle headingMdSemiBold;
  final TextStyle headingMdRegular;
  final TextStyle headingSmallSemiBold;
  final TextStyle headingSmallRegular;
  final TextStyle titleLgSemiBold;
  final TextStyle titleLgRegular;
  final TextStyle titleMdSemiBold;
  final TextStyle titleMdRegular;
  final TextStyle titleMdRegularFgNeutralTertiary;
  final TextStyle titleSmallSemiBold;
  final TextStyle titleSmallRegular;
  final TextStyle labelLgSemiBold;
  final TextStyle labelLgSemiBoldOnBgPrimary;
  final TextStyle labelLgSemiBoldFgPrimary;
  final TextStyle labelLgSemiBoldOnBgNeutralSecondary;
  final TextStyle labelLgSemiBoldFgCritical;
  final TextStyle labelLgSemiBoldLinerPrimary;
  final TextStyle labelLgSemiBoldFgCriticalPressed;
  final TextStyle labelLgSemiBoldFgPrimaryFaded;
  final TextStyle labelLgSemiBoldOnBgNeutralSecondaryFaded;
  final TextStyle labelLgSemiBoldFgNeutralDisabled;
  final TextStyle labelLgSemiBoldFgCriticalDisabled;
  final TextStyle labelLgRegular;
  final TextStyle labelMdSemiBold;
  final TextStyle labelMdMediumFgPrimary;
  final TextStyle labelMdMediumOnBgPrimary;
  final TextStyle labelMdRegular;
  final TextStyle labelSmallSemiBold;
  final TextStyle labelSmallRegular;
  final TextStyle bodyLgSemiBold;
  final TextStyle bodyLgRegular;
  final TextStyle bodyMdSemiBold;
  final TextStyle bodyMdRegular;
  final TextStyle bodyMdRegularFgNeutralSecondary;
  final TextStyle bodyMdRegularFgNeutralTertiary;
  final TextStyle bodyMdRegularFgCritical;
  final TextStyle bodySmallSemiBold;
  final TextStyle bodySmallRegular;

  static const _roboto = 'Roboto';

  static final _headingLgSemiBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 40 / 32,
    fontFamily: _roboto,
  );

  static final _headingLgRegular = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 40 / 32,
    fontFamily: _roboto,
  );

  static final _headingMdSemiBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 36 / 28,
    fontFamily: _roboto,
  );

  static final _headingMdRegular = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 36 / 28,
    fontFamily: _roboto,
  );

  static final _headingSmallSemiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 32 / 24,
    fontFamily: _roboto,
  );

  static final _headingSmallRegular = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 32 / 24,
    fontFamily: _roboto,
  );

  static final _titleLgSemiBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 28 / 22,
    fontFamily: _roboto,
  );

  static final _titleLgRegular = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 28 / 22,
    fontFamily: _roboto,
  );

  static final _titleMdSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.15) / 100,
    fontFamily: _roboto,
  );

  static final _titleMdRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.15) / 100,
    fontFamily: _roboto,
  );

  static final _titleSmallSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _roboto,
  );

  static final _titleSmallRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _roboto,
  );

  static final _labelLgSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _roboto,
  );

  static final _labelLgSemiBoldLinerPrimary = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _roboto,
    foreground:
        Paint()
          ..shader = LinearGradient(
            colors: AppColors.shared.linearPrimary,
          ).createShader(const Rect.fromLTWH(0, 0, 200, 50)),
  );

  static final _labelLgRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _roboto,
  );

  static final _labelMdSemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.5) / 100,
    fontFamily: _roboto,
  );

  static final _labelMdRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.5) / 100,
    fontFamily: _roboto,
  );

  static final _labelSmallSemiBold = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 16 / 11,
    letterSpacing: (11.sp * 0.5) / 100,
    fontFamily: _roboto,
  );

  static final _labelSmallRegular = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 16 / 11,
    letterSpacing: (11.sp * 0.5) / 100,
    fontFamily: _roboto,
  );

  static final _bodyLgSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.5) / 100,
    fontFamily: _roboto,
  );

  static final _bodyLgRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.5) / 100,
    fontFamily: _roboto,
  );

  static final _bodyMdSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 20 / 12,
    letterSpacing: (14.sp * 0.25) / 100,
    fontFamily: _roboto,
  );

  static final _bodyMdRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.25) / 100,
    fontFamily: _roboto,
  );

  static final _bodySmallSemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.fgNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.4) / 100,
    fontFamily: _roboto,
  );

  static final _bodySmallRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.fgNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.4) / 100,
    fontFamily: _roboto,
  );
}
