import 'package:flutter/material.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_styles.dart';

// prefix p is primary, n - neutral, c - critical
enum ButtonType {
  pFill,
  pOutline,
  pText,
  nFill,
  nOutline,
  nText,
  cFill,
  cOutline,
  cText,
}

extension ButtonTypeEx on ButtonType {
  Color? get defaultColor {
    switch (this) {
      case ButtonType.pFill:
        return null;
      case ButtonType.pOutline:
      case ButtonType.pText:
        return AppColors.shared.white;
      case ButtonType.nFill:
        return AppColors.shared.bgNeutralSecondary;
      case ButtonType.nOutline:
      case ButtonType.nText:
        return AppColors.shared.white;
      case ButtonType.cFill:
        return AppColors.shared.bgCritical;
      case ButtonType.cOutline:
      case ButtonType.cText:
        return AppColors.shared.white;
    }
  }

  Color get pressedColor {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.bgPrimary;
      case ButtonType.pOutline:
        return AppColors.shared.bgPrimaryFadedAlternative;
      case ButtonType.pText:
        return AppColors.shared.white;
      case ButtonType.nFill:
      case ButtonType.nOutline:
        return AppColors.shared.bgNeutralPrimary;
      case ButtonType.nText:
        return AppColors.shared.white;
      case ButtonType.cFill:
        return AppColors.shared.bgCriticalPressed;
      case ButtonType.cOutline:
        return AppColors.shared.bgCriticalFaded;
      case ButtonType.cText:
        return AppColors.shared.white;
    }
  }

  Color get disabledColor {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.bgPrimaryFaded;
      case ButtonType.pOutline:
      case ButtonType.pText:
        return AppColors.shared.white;
      case ButtonType.nFill:
        return AppColors.shared.bgNeutralPrimary;
      case ButtonType.nOutline:
      case ButtonType.nText:
        return AppColors.shared.white;
      case ButtonType.cFill:
        return AppColors.shared.bgCriticalFaded;
      case ButtonType.cOutline:
      case ButtonType.cText:
        return AppColors.shared.white;
    }
  }

  List<Color>? get pressedColorGradient {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.linearPrimary;
      case ButtonType.pOutline:
      case ButtonType.pText:
      case ButtonType.nFill:
      case ButtonType.nOutline:
      case ButtonType.nText:
      case ButtonType.cFill:
      case ButtonType.cOutline:
      case ButtonType.cText:
        return null;
    }
  }

  Color get borderDefaultColor {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.transparent;
      case ButtonType.pOutline:
        return AppColors.shared.borderPrimary;
      case ButtonType.pText:
        return AppColors.shared.transparent;
      case ButtonType.nFill:
        return AppColors.shared.transparent;
      case ButtonType.nOutline:
        return AppColors.shared.borderNeutralSecondary;
      case ButtonType.nText:
        return AppColors.shared.transparent;
      case ButtonType.cFill:
        return AppColors.shared.transparent;
      case ButtonType.cOutline:
        return AppColors.shared.borderCritical;
      case ButtonType.cText:
        return AppColors.shared.transparent;
    }
  }

  Color get borderPressedColor {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.transparent;
      case ButtonType.pOutline:
        return AppColors.shared.borderPrimary;
      case ButtonType.pText:
        return AppColors.shared.transparent;
      case ButtonType.nFill:
        return AppColors.shared.transparent;
      case ButtonType.nOutline:
        return AppColors.shared.bgNeutralSecondary;
      case ButtonType.nText:
        return AppColors.shared.transparent;
      case ButtonType.cFill:
        return AppColors.shared.transparent;
      case ButtonType.cOutline:
        return AppColors.shared.borderCritical;
      case ButtonType.cText:
        return AppColors.shared.transparent;
    }
  }

  Color get borderDisabledColor {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.transparent;
      case ButtonType.pOutline:
        return AppColors.shared.borderPrimaryFaded;
      case ButtonType.pText:
        return AppColors.shared.transparent;
      case ButtonType.nFill:
        return AppColors.shared.transparent;
      case ButtonType.nOutline:
        return AppColors.shared.borderNeutralSecondary;
      case ButtonType.nText:
        return AppColors.shared.transparent;
      case ButtonType.cFill:
        return AppColors.shared.transparent;
      case ButtonType.cOutline:
        return AppColors.shared.borderCriticalFaded;
      case ButtonType.cText:
        return AppColors.shared.transparent;
    }
  }

  TextStyle get defaultTextStyle {
    switch (this) {
      case ButtonType.pFill:
        return AppStyles.shared.labelLgSemiBoldOnBgPrimary;
      case ButtonType.pOutline:
      case ButtonType.pText:
        return AppStyles.shared.labelLgSemiBoldFgPrimary;
      case ButtonType.nFill:
        return AppStyles.shared.labelLgSemiBoldOnBgNeutralSecondary;
      case ButtonType.nOutline:
      case ButtonType.nText:
        return AppStyles.shared.labelLgSemiBold;
      case ButtonType.cFill:
        return AppStyles.shared.labelLgSemiBoldOnBgPrimary;
      case ButtonType.cOutline:
      case ButtonType.cText:
        return AppStyles.shared.labelLgSemiBoldFgCritical;
    }
  }

  TextStyle get pressedTextStyle {
    switch (this) {
      case ButtonType.pFill:
        return AppStyles.shared.labelLgSemiBoldOnBgPrimary;
      case ButtonType.pOutline:
        return AppStyles.shared.labelLgSemiBoldFgPrimary;
      case ButtonType.pText:
        return AppStyles.shared.labelLgSemiBoldLinerPrimary;
      case ButtonType.nFill:
        return AppStyles.shared.labelLgSemiBoldOnBgNeutralSecondary;
      case ButtonType.nOutline:
        return AppStyles.shared.labelLgSemiBold;
      case ButtonType.nText:
        return AppStyles.shared.labelLgSemiBoldFgPrimary;
      case ButtonType.cFill:
        return AppStyles.shared.labelLgSemiBoldOnBgPrimary;
      case ButtonType.cOutline:
        return AppStyles.shared.labelLgSemiBoldFgCritical;
      case ButtonType.cText:
        return AppStyles.shared.labelLgSemiBoldFgCriticalPressed;
    }
  }

  TextStyle get disabledTextStyle {
    switch (this) {
      case ButtonType.pFill:
        return AppStyles.shared.labelLgSemiBoldOnBgPrimary;
      case ButtonType.pOutline:
      case ButtonType.pText:
        return AppStyles.shared.labelLgSemiBoldFgPrimaryFaded;
      case ButtonType.nFill:
        return AppStyles.shared.labelLgSemiBoldOnBgNeutralSecondaryFaded;
      case ButtonType.nOutline:
      case ButtonType.nText:
        return AppStyles.shared.labelLgSemiBoldFgNeutralDisabled;
      case ButtonType.cFill:
        return AppStyles.shared.labelLgSemiBoldOnBgPrimary;
      case ButtonType.cOutline:
      case ButtonType.cText:
        return AppStyles.shared.labelLgSemiBoldFgCriticalDisabled;
    }
  }

  Color get iconColorDefault {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.onBgPrimary;
      case ButtonType.pOutline:
      case ButtonType.pText:
        return AppColors.shared.fgPrimary;
      case ButtonType.nFill:
        return AppColors.shared.onBgNeutralSecondary;
      case ButtonType.nOutline:
      case ButtonType.nText:
        return AppColors.shared.fgNeutralPrimary;
      case ButtonType.cFill:
        return AppColors.shared.onBgPrimary;
      case ButtonType.cOutline:
      case ButtonType.cText:
        return AppColors.shared.fgCritical;
    }
  }

  Color get iconColorPressed {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.onBgPrimary;
      case ButtonType.pOutline:
        return AppColors.shared.fgPrimary;
      case ButtonType.pText:
        return AppColors.shared.onBgPrimary;
      case ButtonType.nFill:
        return AppColors.shared.onBgNeutralSecondary;
      case ButtonType.nOutline:
        return AppColors.shared.fgNeutralPrimary;
      case ButtonType.nText:
        return AppColors.shared.fgPrimary;
      case ButtonType.cFill:
        return AppColors.shared.onBgPrimary;
      case ButtonType.cOutline:
        return AppColors.shared.fgCritical;
      case ButtonType.cText:
        return AppColors.shared.fgCriticalPressed;
    }
  }

  Color get iconColorDisabled {
    switch (this) {
      case ButtonType.pFill:
        return AppColors.shared.onBgPrimary;
      case ButtonType.pOutline:
      case ButtonType.pText:
        return AppColors.shared.fgPrimaryFaded;
      case ButtonType.nFill:
        return AppColors.shared.onBgNeutralSecondaryFaded;
      case ButtonType.nOutline:
      case ButtonType.nText:
        return AppColors.shared.fgNeutralDisabled;
      case ButtonType.cFill:
        return AppColors.shared.onBgPrimary;
      case ButtonType.cOutline:
      case ButtonType.cText:
        return AppColors.shared.fgCriticalDisabled;
    }
  }
}
