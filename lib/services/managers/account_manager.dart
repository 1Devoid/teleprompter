import 'package:teleprompter/common/models/user.dart';

class AccountManager {
  factory AccountManager() => _singleton;

  static AccountManager get shared => _singleton;
  static final AccountManager _singleton = AccountManager._init();

  AccountManager._init() {
    init();
  }

  User? user;

  Future<void> init() async {}

  void setUser(User? user) {
    if (user == null) return;
    this.user = user;
  }

  void removeUser() {
    user = null;
  }
}
