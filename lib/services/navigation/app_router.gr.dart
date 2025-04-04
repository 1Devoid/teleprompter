// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:teleprompter/flows/app_tabs/presentation/screen/app_tabs_screen.dart'
    as _i1;
import 'package:teleprompter/flows/home/presentation/screens/home_screen.dart'
    as _i2;
import 'package:teleprompter/flows/profile/presentation/screens/profile_screen.dart'
    as _i3;
import 'package:teleprompter/flows/projects/presentation/screens/projects_screen.dart'
    as _i4;
import 'package:teleprompter/flows/record/presentation/screens/record_preview_screen.dart'
    as _i5;
import 'package:teleprompter/flows/welcome/presentation/screens/welcome_screen.dart'
    as _i6;

/// generated route for
/// [_i1.AppTabsScreen]
class AppTabsRoute extends _i7.PageRouteInfo<void> {
  const AppTabsRoute({List<_i7.PageRouteInfo>? children})
    : super(AppTabsRoute.name, initialChildren: children);

  static const String name = 'AppTabsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppTabsScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i4.ProjectsScreen]
class ProjectsRoute extends _i7.PageRouteInfo<void> {
  const ProjectsRoute({List<_i7.PageRouteInfo>? children})
    : super(ProjectsRoute.name, initialChildren: children);

  static const String name = 'ProjectsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProjectsScreen();
    },
  );
}

/// generated route for
/// [_i5.RecordPreviewScreen]
class RecordPreviewRoute extends _i7.PageRouteInfo<RecordPreviewRouteArgs> {
  RecordPreviewRoute({
    _i8.Key? key,
    String title = '',
    List<_i7.PageRouteInfo>? children,
  }) : super(
         RecordPreviewRoute.name,
         args: RecordPreviewRouteArgs(key: key, title: title),
         initialChildren: children,
       );

  static const String name = 'RecordPreviewRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RecordPreviewRouteArgs>(
        orElse: () => const RecordPreviewRouteArgs(),
      );
      return _i5.RecordPreviewScreen(key: args.key, title: args.title);
    },
  );
}

class RecordPreviewRouteArgs {
  const RecordPreviewRouteArgs({this.key, this.title = ''});

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'RecordPreviewRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute({List<_i7.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.WelcomeScreen();
    },
  );
}
