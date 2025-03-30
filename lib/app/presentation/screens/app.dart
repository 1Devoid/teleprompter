import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:teleprompter/app/presentation/logic/app/app_cubit.dart';
import 'package:teleprompter/services/navigation/app_router.dart';
import 'package:teleprompter/services/navigation/app_router.gr.dart';

class App extends StatefulWidget {
  const App({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  static var lifecycleState = AppLifecycleState.resumed;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final _router = AppRouter(App.navigatorKey);

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    App.lifecycleState = state;
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listener: (context, state) {
        if (state is AppHome) {
          _router.replaceAll([const AppTabsRoute()]);
        }
      },
      child: KeyboardDismisser(
        child: MaterialApp.router(
          theme: ThemeData(
            // scaffoldBackgroundColor: AppColors.shared.mainBlueColor1,
            // unselectedWidgetColor: AppColors.shared.whiteColor,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            ...context.localizationDelegates,
            DefaultCupertinoLocalizations.delegate,
          ],
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: _router.delegate(
            navigatorObservers: () => [AutoRouteObserver()],
          ),
          builder: (context, child) => child ?? const SizedBox(),
        ),
      ),
    );
  }
}
