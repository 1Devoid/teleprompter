import 'package:easy_localization/easy_localization.dart';
import 'package:teleprompter/common/app_resources.dart';
import 'package:teleprompter/generated/locale_keys.g.dart';

enum AppTabsType { home, projects, profile }

extension AppTabsTypeEx on AppTabsType {
  String get title {
    switch (this) {
      case AppTabsType.home:
        return LocaleKeys.home.tr();
      case AppTabsType.projects:
        return LocaleKeys.projects.tr();
      case AppTabsType.profile:
        return LocaleKeys.profile.tr();
    }
  }

  String get icon {
    switch (this) {
      case AppTabsType.home:
        return AppResources.home;
      case AppTabsType.projects:
        return AppResources.projects;
      case AppTabsType.profile:
        return AppResources.profile;
    }
  }

  String get iconSelected {
    switch (this) {
      case AppTabsType.home:
        return AppResources.homeActive;
      case AppTabsType.projects:
        return AppResources.projectsActive;
      case AppTabsType.profile:
        return AppResources.profileActive;
    }
  }
}
