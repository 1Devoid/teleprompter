// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  factory AppConfig() {
    return _singleton;
  }

  AppConfig._();
  bool isProduction = false;

  static final AppConfig _singleton = AppConfig._();

  static const appName = 'Teleprompter';
  static get API_URI => dotenv.env['API_URI'] ?? '';

  Future<void> loadDev() async {
    isProduction = false;
    // await dotenv.load(fileName: '.env.dev');
    debugPrint('API ENDPOINT: $API_URI');
  }
}
