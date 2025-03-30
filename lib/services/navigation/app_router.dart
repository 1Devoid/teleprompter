import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teleprompter/services/navigation/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(GlobalKey<NavigatorState> navigatorKey)
    : super(navigatorKey: navigatorKey);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(
      initial: true,
      page: AppTabsRoute.page,
      children: [
        AutoRoute(initial: true, page: HomeRoute.page),
        AutoRoute(page: ProjectsRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
  ];
}
