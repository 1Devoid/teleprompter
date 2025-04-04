import 'package:auto_route/annotations.dart';
import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_colors.dart';
import 'package:teleprompter/common/app_loader.dart';
import 'package:teleprompter/common/app_styles.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';
import 'package:teleprompter/flows/record/presentation/widgets/camera_preview_tools.dart';
import 'package:teleprompter/flows/record/presentation/widgets/prompt_content_widget.dart';
import 'package:teleprompter/flows/record/presentation/widgets/record_preview_app_bar.dart';
import 'package:teleprompter/flows/record/presentation/widgets/text_toolbar_widget.dart';
import 'package:teleprompter/generated/locale_keys.g.dart';

@RoutePage()
class RecordPreviewScreen extends StatelessWidget {
  const RecordPreviewScreen({super.key, this.title = ''});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProjectCubit()),
        BlocProvider(create: (_) => RecordCubit()),
      ],
      child: _RecordPreviewScreen(title),
    );
  }
}

class _RecordPreviewScreen extends StatelessWidget {
  const _RecordPreviewScreen(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectCubit, ProjectState>(
      buildWhen: (p, c) => p.isLoading != c.isLoading,
      builder: (context, projectState) {
        if (projectState.isLoading) return const Center(child: AppLoader());
        final cubit = context.read<RecordCubit>();

        return Scaffold(
          appBar: RecordPreviewAppBar(title: title),
          //TODO: delete
          body: BlocBuilder<RecordCubit, RecordState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (cubit.cameraController != null) ...[
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        margin: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.sp),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            BlocBuilder<RecordCubit, RecordState>(
                              buildWhen: (p, c) => p.isLoading != c.isLoading,
                              builder: (context, state) {
                                if (state.isLoading) {
                                  return Center(
                                    child: AppLoader(
                                      color: AppColors.shared.fgPrimary,
                                    ),
                                  );
                                }
                                return Center(
                                  child: Transform.scale(
                                    scale:
                                        cubit
                                            .cameraController!
                                            .value
                                            .aspectRatio /
                                        (1.sw / 1.sh),
                                    child: CameraPreview(
                                      cubit.cameraController!,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PromptContent(),
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20.sp,
                                  ),
                                  width: 1.sw * 0.8,
                                  child: SizedBox(
                                    height: 1.sh * 0.2,
                                    width: 1.sw * 0.7,
                                    // child: PromptPropertiesSlider(),
                                  ),
                                ),
                                CameraPreviewTools(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextToolbar(),
                    SizedBox(height: 16.sp),
                  ] else
                    Center(
                      child: Text(
                        LocaleKeys.camera_not_found.tr(),
                        style: AppStyles.shared.titleLgSemiBold,
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
