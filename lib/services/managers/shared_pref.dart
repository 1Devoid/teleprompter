import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  static SharedPrefManager shared = SharedPrefManager._();
  SharedPrefManager._();

  Future<void> write(String key, Object value) async {
    final pref = await SharedPreferences.getInstance();
    if (value is String) {
      pref.setString(key, value);
    } //
    else if (value is int) {
      pref.setInt(key, value);
    } //
    else if (value is bool) {
      pref.setBool(key, value);
    } //
    else if (value is double) {
      pref.setDouble(key, value);
    }
  }

  Future<Object?> get(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }
}
