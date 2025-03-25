import 'package:teleprompter/common/models/user.dart';

abstract class IAccountDataSource {
  Future<User> getUser();
}

class AccountDataSource extends IAccountDataSource {
  @override
  Future<User> getUser() async {
    return User();
  }
}
