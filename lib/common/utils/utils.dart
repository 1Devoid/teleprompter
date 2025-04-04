import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_constants.dart';

class Utils {
  static void appPrint(String? str) {
    try {
      // if (!AppConfig().isProduction)
      debugPrint(str);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static double calcWidth({
    required double spaceBetween,
    required int numberOfElements,
    double? leftRightSpace,
  }) {
    return (1.sw -
            ((leftRightSpace ?? (C.leftRightPadding)) * 2) -
            (spaceBetween * (numberOfElements - 1))) /
        numberOfElements;
  }

  static Future<dynamic> showModalView({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.shared.transparent,
      builder: (context) => widget,
      isScrollControlled: true,
    );
  }

  // static Future<dynamic> showSnackBar({
  //   required BuildContext context,
  //   required String? message,
  //   AppSnackBar snackBar = AppSnackBar.info,
  //   bool isDark = true,
  // }) async {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       backgroundColor: AppColors.shared.transparent,
  //       elevation: 0,
  //       content: Container(
  //         padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 12.sp),
  //         decoration: BoxDecoration(
  //           color: snackBar.bg,
  //           border: Border.all(color: snackBar.borderColor, width: 1.sp),
  //           borderRadius: BorderRadius.circular(8.sp),
  //         ),
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             AppSvg(
  //               snackBar.icon,
  //               width: 24.sp,
  //               height: 24.sp,
  //               boxFit: BoxFit.contain,
  //             ),
  //             SizedBox(width: 8.sp),
  //             Expanded(
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     snackBar.title,
  //                     style:
  //                         isDark
  //                             ? AppStyles.shared.alertTitleWhite
  //                             : AppStyles.shared.alertTitleBlack,
  //                   ),
  //                   Text(
  //                     message ?? LocaleKeys.something_went_wrong.tr(),
  //                     style:
  //                         isDark
  //                             ? AppStyles.shared.alertDescriptionGray
  //                             : AppStyles.shared.alertDescriptionFF6D6D6D,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(width: 8.sp),
  //             GestureDetector(
  //               onTap: ScaffoldMessenger.of(context).hideCurrentSnackBar,
  //               child: AppSvg(
  //                 AppResources.close,
  //                 width: 24.sp,
  //                 height: 24.sp,
  //                 color:
  //                     isDark ? AppColors.shared.white : AppColors.shared.black,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
