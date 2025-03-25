import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';
import 'package:teleprompter/flows/record/presentation/logic/record/record_cubit.dart';
import 'package:teleprompter/flows/record/presentation/widgets/camera_preview_tools.dart';
import 'package:teleprompter/flows/record/presentation/widgets/prompt_content_widget.dart';
import 'package:teleprompter/flows/record/presentation/widgets/prompt_properties_slider.dart';
import 'package:teleprompter/flows/record/presentation/widgets/text_toolbar_widget.dart';

class RecordPreviewScreen extends StatelessWidget {
  const RecordPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => RecordCubit(),
        child: _RecordPreviewScreen(),
    );
  }
}

class _RecordPreviewScreen extends StatelessWidget {
  const _RecordPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProjectCubit>(create: (_) => ProjectCubit()),
        BlocProvider<RecordCubit>(create: (_) => RecordCubit()),
      ],
      child: BlocBuilder<ProjectCubit, ProjectState>(
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, projectState) {
          if (projectState.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(projectState.projectName),
              actions: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.edit_note_outlined),
                ),
              ],
            ),
            body: BlocBuilder<RecordCubit, RecordState>(
              buildWhen: (previous, current) =>
              previous.isLoading != current.isLoading ||
                  previous.cameras != current.cameras,
              builder: (context, recordState) {
                if (projectState.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (context.read<RecordCubit>().cameraController != null)
                     Container(
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      height: MediaQuery.of(context).size.height * 0.75,
                        child:Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: CameraPreview(
                                context.read<RecordCubit>().cameraController!,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PromptContent(),
                                 Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 20.0,
                                            right: 20.0
                                        ),
                                        width: MediaQuery.of(context)
                                            .size.width * 0.8,
                                        child:Column(
                                          children: [
                                            PromptPropertiesSlider(),
                                            CameraPreviewTools()
                                          ],
                                        )
                                      ),
                                    ],
                                 )
                              ],
                            ),
                          ],
                        ),
                      )
                    else
                      const Center(child: Text('Camera not found! '
                          'Please, check permissions!')),
                    TextToolbar(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

