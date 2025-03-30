import 'package:flutter_bloc/flutter_bloc.dart';

class AppButtonCubit extends Cubit<bool> {
  AppButtonCubit() : super(false);

  void setPressed() => emit(true);
  void setDefault() => emit(false);
}
