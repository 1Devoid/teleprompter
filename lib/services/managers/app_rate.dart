import 'package:in_app_review/in_app_review.dart';

class AppRate {
  factory AppRate() => _singleton;

  static AppRate get shared => _singleton;
  static final AppRate _singleton = AppRate._init();

  InAppReview? inAppReview;

  AppRate._init() {
    init();
  }

  Future<void> init() async {
    inAppReview ??= InAppReview.instance;
  }

  void showAppRate() async {
    if (inAppReview != null && await inAppReview!.isAvailable()) {
      inAppReview!.requestReview();
    }
  }
}
