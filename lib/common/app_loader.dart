import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_resources.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key, this.color});
  final Color? color;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * pi,
          child: child,
        );
      },
      child: SvgPicture.asset(
        AppResources.load,
        height: 24.sp,
        colorFilter: ColorFilter.mode(
          widget.color ?? AppColors.shared.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
