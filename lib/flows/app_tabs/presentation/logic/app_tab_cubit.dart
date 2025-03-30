import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/app_tabs/presentation/enums/app_tabs_type.dart';

class AppTabCubit extends Cubit<AppTabsType> {
  AppTabCubit() : super(AppTabsType.home);

  void setAppTab(AppTabsType type) {
    if (type == state) return;
    emit(type);
  }
}
