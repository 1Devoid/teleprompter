import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors shared = AppColors._();
  final _colors = LightColors();

  Color get transparent => _colors.transparent;
  Color get neutral50 => _colors.neutral50;
  Color get neutral100 => _colors.neutral100;
  Color get neutral200 => _colors.neutral200;
  Color get neutral300 => _colors.neutral300;
  Color get neutral400 => _colors.neutral400;
  Color get neutral500 => _colors.neutral500;
  Color get neutral600 => _colors.neutral600;
  Color get neutral700 => _colors.neutral700;
  Color get neutral800 => _colors.neutral800;
  Color get neutral900 => _colors.neutral900;
  Color get neutral950 => _colors.neutral950;
  Color get blue50 => _colors.blue50;
  Color get blue100 => _colors.blue100;
  Color get blue200 => _colors.blue200;
  Color get blue300 => _colors.blue300;
  Color get blue400 => _colors.blue400;
  Color get blue500 => _colors.blue500;
  Color get blue600 => _colors.blue600;
  Color get blue700 => _colors.blue700;
  Color get blue800 => _colors.blue800;
  Color get blue900 => _colors.blue900;
  Color get blue950 => _colors.blue950;
  Color get purple50 => _colors.purple50;
  Color get purple100 => _colors.purple100;
  Color get purple200 => _colors.purple200;
  Color get purple300 => _colors.purple300;
  Color get purple400 => _colors.purple400;
  Color get purple500 => _colors.purple500;
  Color get purple600 => _colors.purple600;
  Color get purple700 => _colors.purple700;
  Color get purple800 => _colors.purple800;
  Color get purple900 => _colors.purple900;
  Color get purple950 => _colors.purple950;
  Color get pink50 => _colors.pink50;
  Color get pink100 => _colors.pink100;
  Color get pink200 => _colors.pink200;
  Color get pink300 => _colors.pink300;
  Color get pink400 => _colors.pink400;
  Color get pink500 => _colors.pink500;
  Color get pink600 => _colors.pink600;
  Color get pink700 => _colors.pink700;
  Color get red50 => _colors.red50;
  Color get red100 => _colors.red100;
  Color get red200 => _colors.red200;
  Color get red300 => _colors.red300;
  Color get red400 => _colors.red400;
  Color get red500 => _colors.red500;
  Color get red600 => _colors.red600;
  Color get red700 => _colors.red700;
  Color get red800 => _colors.red800;
  Color get red900 => _colors.red900;
  Color get gray100 => _colors.gray100;
  Color get gray200 => _colors.gray200;
  Color get gray300 => _colors.gray300;
  Color get gray400 => _colors.gray400;
  Color get white => _colors.white;

  List<Color> get linearPrimary => [_colors.blue400, _colors.blue600];
  List<Color> get linearSecondary => [_colors.purple500, _colors.pink400];
  List<Color> get linearSecondaryFaded => [_colors.purple200, _colors.pink200];

  Color get bgScreen => _colors.neutral50;
  Color get bgNeutralPrimary => _colors.gray100;
  Color get bgNeutralSecondary => _colors.gray300;
  Color get bgNeutralDisabled => _colors.neutral100;
  List<Color> get bgPrimaryGradient => linearPrimary;
  Color get bgPrimary => _colors.blue600;
  Color get bgPrimaryFaded => _colors.blue200;
  Color get bgPrimaryFadedAlternative => _colors.blue50;
  Color get bgCritical => _colors.red600;
  Color get bgCriticalPressed => _colors.red700;
  Color get bgCriticalFaded => _colors.red50;

  Color get elevationBase => _colors.white;

  Color get borderNeutralPrimary => _colors.gray100;
  Color get borderNeutralSecondary => _colors.gray400;
  Color get borderPrimary => _colors.blue600;
  Color get borderPrimaryFaded => _colors.blue100;
  Color get borderCritical => _colors.red400;
  Color get borderCriticalFaded => _colors.red100;

  Color get fgNeutralPrimary => _colors.neutral900;
  Color get fgNeutralSecondary => _colors.neutral400;
  Color get fgNeutralTertiary => _colors.neutral300;
  Color get fgNeutralDisabled => _colors.neutral200;
  Color get fgPrimary => _colors.blue900;
  Color get fgPrimaryFaded => _colors.blue200;
  Color get fgCritical => _colors.red600;
  Color get fgCriticalPressed => _colors.red700;
  Color get fgCriticalDisabled => _colors.red200;
  Color get fgWhite => _colors.white;

  Color get onBgPrimary => _colors.white;
  Color get onBgNeutralSecondary => _colors.blue950;
  Color get onBgNeutralSecondaryFaded => _colors.blue200;
}

abstract class IColor {
  late final Color transparent;
  late final Color neutral50;
  late final Color neutral100;
  late final Color neutral200;
  late final Color neutral300;
  late final Color neutral400;
  late final Color neutral500;
  late final Color neutral600;
  late final Color neutral700;
  late final Color neutral800;
  late final Color neutral900;
  late final Color neutral950;
  late final Color blue50;
  late final Color blue100;
  late final Color blue200;
  late final Color blue300;
  late final Color blue400;
  late final Color blue500;
  late final Color blue600;
  late final Color blue700;
  late final Color blue800;
  late final Color blue900;
  late final Color blue950;
  late final Color purple50;
  late final Color purple100;
  late final Color purple200;
  late final Color purple300;
  late final Color purple400;
  late final Color purple500;
  late final Color purple600;
  late final Color purple700;
  late final Color purple800;
  late final Color purple900;
  late final Color purple950;
  late final Color pink50;
  late final Color pink100;
  late final Color pink200;
  late final Color pink300;
  late final Color pink400;
  late final Color pink500;
  late final Color pink600;
  late final Color pink700;
  late final Color red50;
  late final Color red100;
  late final Color red200;
  late final Color red300;
  late final Color red400;
  late final Color red500;
  late final Color red600;
  late final Color red700;
  late final Color red800;
  late final Color red900;
  late final Color gray100;
  late final Color gray200;
  late final Color gray300;
  late final Color gray400;
  late final Color white;
}

class LightColors implements IColor {
  @override
  Color transparent = Colors.transparent;

  @override
  Color blue100 = const Color(0xFFE0EBF9);

  @override
  Color blue200 = const Color(0xFFC7DBF6);

  @override
  Color blue300 = const Color(0xFFA1C5EF);

  @override
  Color blue400 = const Color(0xFF5E9BF8);

  @override
  Color blue50 = const Color(0xFFF1F6FD);

  @override
  Color blue500 = const Color(0xFF5386DE);

  @override
  Color blue600 = const Color(0xFF3D69D1);

  @override
  Color blue700 = const Color(0xFF3558C0);

  @override
  Color blue800 = const Color(0xFF31489C);

  @override
  Color blue900 = const Color(0xFF2C407C);

  @override
  Color blue950 = const Color(0xFF1F284D);

  @override
  Color gray100 = const Color(0xFFF8F8FB);

  @override
  Color gray200 = const Color(0xFFE8E9ED);

  @override
  Color gray300 = const Color(0xFFE7E8EA);

  @override
  Color gray400 = const Color(0xFFD9D8E0);

  @override
  Color neutral100 = const Color(0xFFE7E8EA);

  @override
  Color neutral200 = const Color(0xFFD6D3D1);

  @override
  Color neutral300 = const Color(0xFFA8A29E);

  @override
  Color neutral400 = const Color(0xFF78716C);

  @override
  Color neutral50 = const Color(0xFFF9F9F9);

  @override
  Color neutral500 = const Color(0xFF57534E);

  @override
  Color neutral600 = const Color(0xFF44403C);

  @override
  Color neutral700 = const Color(0xFF292524);

  @override
  Color neutral800 = const Color(0xFF1C1917);

  @override
  Color neutral900 = const Color(0xFF0C0A09);

  @override
  Color neutral950 = const Color(0xFF17130E);

  @override
  Color pink100 = const Color(0xFFF7E7FF);

  @override
  Color pink200 = const Color(0xFFEFD5FF);

  @override
  Color pink300 = const Color(0xFFE3B4FE);

  @override
  Color pink400 = const Color(0xFFD48CFC);

  @override
  Color pink50 = const Color(0xFFFCF5FF);

  @override
  Color pink500 = const Color(0xFFC155F7);

  @override
  Color pink600 = const Color(0xFFAF33EA);

  @override
  Color pink700 = const Color(0xFF9822CE);

  @override
  Color purple100 = const Color(0xFFECEAFD);

  @override
  Color purple200 = const Color(0xFFDDD7FD);

  @override
  Color purple300 = const Color(0xFFC3B7FB);

  @override
  Color purple400 = const Color(0xFFA78EF7);

  @override
  Color purple50 = const Color(0xFFF5F3FF);

  @override
  Color purple500 = const Color(0xFF8C64F2);

  @override
  Color purple600 = const Color(0xFF793FE7);

  @override
  Color purple700 = const Color(0xFF6A2ED4);

  @override
  Color purple800 = const Color(0xFF5A25B2);

  @override
  Color purple900 = const Color(0xFF4A2092);

  @override
  Color purple950 = const Color(0xFF2E1163);

  @override
  Color red100 = const Color(0xFFFFE1E1);

  @override
  Color red200 = const Color(0xFFFFC9C9);

  @override
  Color red300 = const Color(0xFFFEA3A3);

  @override
  Color red400 = const Color(0xFFFB6D6D);

  @override
  Color red50 = const Color(0xFFFEF2F2);

  @override
  Color red500 = const Color(0xFFF3413F);

  @override
  Color red600 = const Color(0xFFE23130);

  @override
  Color red700 = const Color(0xFFBD191A);

  @override
  Color red800 = const Color(0xFF9C1918);

  @override
  Color red900 = const Color(0xFF811B1B);

  @override
  Color white = const Color(0xFFFFFFFF);
}
