import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/common/app_constants.dart';
import 'package:teleprompter/common/app_resources.dart';
import 'package:teleprompter/common/app_styles.dart';

class RecordPreviewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RecordPreviewAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: C.appBarSize,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal: 4.sp, vertical: 8.sp),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: context.router.maybePop,
            child: SvgPicture.asset(
              AppResources.backArrow48,
              width: 48.sp,
              height: 48.sp,
            ),
          ),
          SizedBox(width: 8.sp),
          Expanded(
            child: Text(
              title,
              style: AppStyles.shared.titleLgRegular,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 8.sp),
          GestureDetector(
            onTap: context.router.maybePop,
            child: SvgPicture.asset(
              AppResources.editButton48,
              width: 48.sp,
              height: 48.sp,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(C.appBarSize);
}
