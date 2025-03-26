import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/app/domain/repositories/account_repository.dart';
import 'package:teleprompter/app/presentation/logic/app/app_cubit.dart';
import 'package:teleprompter/app/presentation/screens/app.dart';
import 'package:teleprompter/flows/record/presentation/screens/record_preview_screen.dart';
import 'package:teleprompter/generated/codegen_loader.g.dart';
import 'package:teleprompter/services/app_config.dart';

import 'app/data/datasources/account_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await AppConfig().loadDev();

  runApp(

    MaterialApp(
      home: RecordPreviewScreen(),
    )

    // EasyLocalization(
    //   supportedLocales: const [Locale('en', 'US')],
    //   path: 'assets/translations',
    //   assetLoader: const CodegenLoader(),
    //   fallbackLocale: const Locale('en', 'US'),
    //   child: ScreenUtilInit(
    //     designSize: const Size(412, 892),
    //     minTextAdapt: true,
    //     splitScreenMode: true,
    //     builder:
    //         (context, child) => RepositoryProvider(
    //           create: (context) => AccountRepository(AccountDataSource()),
    //           child: MultiBlocProvider(
    //             providers: [
    //               BlocProvider(
    //                 create: (ctx) => AppCubit(ctx.read<AccountRepository>()),
    //               ),
    //             ],
    //             child: const App(),
    //           ),
    //         ),
    //   ),
    // ),
  );
}
