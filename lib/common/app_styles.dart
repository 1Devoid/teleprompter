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
      titleSmallSemiBold = _titleSmallSemiBold,
      titleSmallRegular = _titleSmallRegular,
      labelLgSemiBold = _labelLgSemiBold,
      labelLgRegular = _labelLgRegular,
      labelMdSemiBold = _labelMdSemiBold,
      labelMdRegular = _labelMdRegular,
      labelSmallSemiBold = _labelSmallSemiBold,
      labelSmallRegular = _labelSmallRegular,
      bodyLgSemiBold = _bodyLgSemiBold,
      bodyLgRegular = _bodyLgRegular,
      bodyMdSemiBold = _bodyMdSemiBold,
      bodyMdRegular = _bodyMdRegular,
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
  final TextStyle titleSmallSemiBold;
  final TextStyle titleSmallRegular;
  final TextStyle labelLgSemiBold;
  final TextStyle labelLgRegular;
  final TextStyle labelMdSemiBold;
  final TextStyle labelMdRegular;
  final TextStyle labelSmallSemiBold;
  final TextStyle labelSmallRegular;
  final TextStyle bodyLgSemiBold;
  final TextStyle bodyLgRegular;
  final TextStyle bodyMdSemiBold;
  final TextStyle bodyMdRegular;
  final TextStyle bodySmallSemiBold;
  final TextStyle bodySmallRegular;

  static const _poppins = 'Poppins';

  static final _headingLgSemiBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 40 / 32,
    fontFamily: _poppins,
  );

  static final _headingLgRegular = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 40 / 32,
    fontFamily: _poppins,
  );

  static final _headingMdSemiBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 36 / 28,
    fontFamily: _poppins,
  );

  static final _headingMdRegular = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 36 / 28,
    fontFamily: _poppins,
  );

  static final _headingSmallSemiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 32 / 24,
    fontFamily: _poppins,
  );

  static final _headingSmallRegular = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 32 / 24,
    fontFamily: _poppins,
  );

  static final _titleLgSemiBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 28 / 22,
    fontFamily: _poppins,
  );

  static final _titleLgRegular = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 28 / 22,
    fontFamily: _poppins,
  );

  static final _titleMdSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.15) / 100,
    fontFamily: _poppins,
  );

  static final _titleMdRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.15) / 100,
    fontFamily: _poppins,
  );

  static final _titleSmallSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _poppins,
  );

  static final _titleSmallRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _poppins,
  );

  static final _labelLgSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _poppins,
  );

  static final _labelLgRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.1) / 100,
    fontFamily: _poppins,
  );

  static final _labelMdSemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.5) / 100,
    fontFamily: _poppins,
  );

  static final _labelMdRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.5) / 100,
    fontFamily: _poppins,
  );

  static final _labelSmallSemiBold = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 16 / 11,
    letterSpacing: (11.sp * 0.5) / 100,
    fontFamily: _poppins,
  );

  static final _labelSmallRegular = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 16 / 11,
    letterSpacing: (11.sp * 0.5) / 100,
    fontFamily: _poppins,
  );

  static final _bodyLgSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.5) / 100,
    fontFamily: _poppins,
  );

  static final _bodyLgRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 24 / 16,
    letterSpacing: (16.sp * 0.5) / 100,
    fontFamily: _poppins,
  );

  static final _bodyMdSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 20 / 12,
    letterSpacing: (14.sp * 0.25) / 100,
    fontFamily: _poppins,
  );

  static final _bodyMdRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 20 / 14,
    letterSpacing: (14.sp * 0.25) / 100,
    fontFamily: _poppins,
  );

  static final _bodySmallSemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.4) / 100,
    fontFamily: _poppins,
  );

  static final _bodySmallRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.shared.foregroundNeutralPrimary,
    height: 16 / 12,
    letterSpacing: (12.sp * 0.4) / 100,
    fontFamily: _poppins,
  );
}
