// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:teleprompter/flows/app_tabs/presentation/screen/app_tabs_screen.dart'
    as _i1;
import 'package:teleprompter/flows/home/presentation/screens/home_screen.dart'
    as _i2;
import 'package:teleprompter/flows/profile/presentation/screens/profile_screen.dart'
    as _i3;
import 'package:teleprompter/flows/projects/presentation/screens/projects_screen.dart'
    as _i4;
import 'package:teleprompter/flows/welcome/presentation/screens/welcome_screen.dart'
    as _i5;

/// generated route for
/// [_i1.AppTabsScreen]
class AppTabsRoute extends _i6.PageRouteInfo<void> {
  const AppTabsRoute({List<_i6.PageRouteInfo>? children})
    : super(AppTabsRoute.name, initialChildren: children);

  static const String name = 'AppTabsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppTabsScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i4.ProjectsScreen]
class ProjectsRoute extends _i6.PageRouteInfo<void> {
  const ProjectsRoute({List<_i6.PageRouteInfo>? children})
    : super(ProjectsRoute.name, initialChildren: children);

  static const String name = 'ProjectsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProjectsScreen();
    },
  );
}

/// generated route for
/// [_i5.WelcomeScreen]
class WelcomeRoute extends _i6.PageRouteInfo<void> {
  const WelcomeRoute({List<_i6.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.WelcomeScreen();
    },
  );
}
