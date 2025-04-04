import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/buttons/tool_btn.dart';
import 'package:teleprompter/flows/record/presentation/enums/record_tool_types.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';

class TextToolbar extends StatelessWidget {
  const TextToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.sp,
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) => SizedBox(width: 8.75.sp),
        itemCount: RecordToolTypes.values.length,
        itemBuilder: (context, index) {
          return BlocBuilder<ProjectCubit, ProjectState>(
            buildWhen: (p, c) => p.toolType != c.toolType,
            builder: (context, state) {
              final currType = RecordToolTypes.values[index];
              late final cubit = context.read<ProjectCubit>();
              return ToolButton(
                isSelected: currType == state.toolType,
                iconPath: currType.icon,
                title: currType.title,
                onTap: () => cubit.setType(currType, context),
              );
            },
          );
        },
      ),
    );
  }
}
