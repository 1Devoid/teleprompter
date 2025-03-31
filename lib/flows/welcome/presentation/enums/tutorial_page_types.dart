import 'package:easy_localization/easy_localization.dart';
import 'package:teleprompter/common/app_resources.dart';
import 'package:teleprompter/generated/locale_keys.g.dart';

enum TutorialPageTypes { firstScreen, secondScreen, thirdScreen }

extension TutorialPageTypeEx on TutorialPageTypes {
  String get title {
    switch (this) {
      case TutorialPageTypes.firstScreen:
        return LocaleKeys.onboarding_first_screen_heading.tr();
      case TutorialPageTypes.secondScreen:
        return LocaleKeys.onboarding_second_screen_heading.tr();
      case TutorialPageTypes.thirdScreen:
        return LocaleKeys.onboarding_third_screen_heading.tr();
    }
  }

  String get image {
    switch (this) {
      case TutorialPageTypes.firstScreen:
        return AppResources.onBoardingFirstScreen;
      case TutorialPageTypes.secondScreen:
        return AppResources.onBoardingSecondScreen;
      case TutorialPageTypes.thirdScreen:
        return AppResources.onBoardingThirdScreen;
    }
  }
}
