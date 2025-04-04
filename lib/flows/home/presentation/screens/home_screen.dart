import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:teleprompter/common/app_resources.dart';
import 'package:teleprompter/common/buttons/tool_btn.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToolButton(
        isSelected: true,
        iconPath: AppResources.home,
        title: 'titletitle',
        onTap: () {},
      ),
    );
  }
}
