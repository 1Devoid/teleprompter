flutter pub run easy_localization:generate -S assets/translation/ -f keys -o locale_keys.g.dart
flutter pub run easy_localization:generate -S assets/translation/ -f json -o codegen_loader.g.dart

flutter packages pub run build_runner build --delete-conflicting-outputs       