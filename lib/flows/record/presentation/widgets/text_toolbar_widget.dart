import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/project/project_cubit.dart';
import './text_toolbar_component_widget.dart';

class TextToolbar extends StatelessWidget{
  const TextToolbar({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectCubit, ProjectState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, projectState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // Direction
          TextToolbarComponent(
            onTap: () {
              context.read<ProjectCubit>().openToolSlider('Position');
            },
            title: "Position",
            icon: Icons.compare_arrows,
          ),

          // Font Size
          TextToolbarComponent(
            onTap: () {
              context.read<ProjectCubit>().openToolSlider('Font size');
            },
            title: "Font size",
            icon: Icons.font_download_outlined,
          ),

          // Speed
          TextToolbarComponent(
            onTap: () {},
            title: "Speed",
            icon: Icons.speed,
          ),

          // Start point
          TextToolbarComponent(
            onTap: () {},
            title: "Start point",
            icon: Icons.start_outlined,
          ),

          // Countdown
          TextToolbarComponent(
            onTap: () {},
            title: "Countdown",
            icon: Icons.timer_outlined,
          ),
          ],
        );
      }
    );
  }
}