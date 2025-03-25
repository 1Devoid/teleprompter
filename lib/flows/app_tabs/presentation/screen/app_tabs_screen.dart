import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/app_tabs/presentation/logic/app_tab_cubit.dart';

@RoutePage()
class AppTabsScreen extends StatelessWidget {
  const AppTabsScreen({super.key});

  static TabsRouter? tabsRouter;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppTabCubit(),
      child: const _AppTabs(),
    );
  }
}

class _AppTabs extends StatelessWidget {
  const _AppTabs();

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [],
      bottomNavigationBuilder: (_, tabsRouter) {
        AppTabsScreen.tabsRouter = tabsRouter;
        return Container();
      },
    );
  }
}
