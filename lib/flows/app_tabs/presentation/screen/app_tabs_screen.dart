import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/flows/app_tabs/presentation/enums/app_tabs_type.dart';
import 'package:teleprompter/flows/app_tabs/presentation/logic/app_tab_cubit.dart';
import 'package:teleprompter/flows/app_tabs/presentation/widgets/tab_item.dart';
import 'package:teleprompter/services/navigation/app_router.gr.dart';

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
      backgroundColor: AppColors.shared.onBgPrimary,
      extendBody: true,
      routes: const [HomeRoute(), ProjectsRoute(), ProfileRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        AppTabsScreen.tabsRouter = tabsRouter;
        return SafeArea(
          child: Container(
            height: 80.sp,
            decoration: BoxDecoration(
              color: AppColors.shared.elevationBase,
              border: Border(
                top: BorderSide(
                  color: AppColors.shared.borderNeutralSecondary,
                  width: 1.sp,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                AppTabsType.values.length,
                (index) => TabItem(AppTabsType.values[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}
