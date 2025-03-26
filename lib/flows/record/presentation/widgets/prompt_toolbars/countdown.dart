import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/common/widgets/bottom_sheet.dart';
import 'package:teleprompter/flows/record/presentation/logic/project/project_cubit.dart';

class CountDown extends StatelessWidget {
  const CountDown({super.key, this.projectContext, this.state});

  final BuildContext? projectContext;
  final ProjectState? state;

  @override
  Widget build(BuildContext context) {
    final List<int> times = [0, 1, 2, 3, 5, 10, 15];

    if (projectContext == null || state == null) {
      return const Center(child: Text('Error, while opening'));
    }

    return BottomSheetModal(
      height: MediaQuery.of(context).size.height * 0.15,
      children: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Countdown'),
              IconButton(
                onPressed: () {
                  projectContext!.read<ProjectCubit>().openToolSlider('Count');
                  projectContext!.read<ProjectCubit>().setToolActive(false);
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          Wrap(
            spacing: 8.0,
            children: List.generate(times.length, (index) {
              final isSelected = state!.countDown == times[index];
              return GestureDetector(
                onTap: () {
                  projectContext!.read<ProjectCubit>().openToolSlider('Count');
                  projectContext!.read<ProjectCubit>().changeCountdown(
                    times[index],
                  );
                  projectContext!.read<ProjectCubit>().setToolActive(false);
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue.shade200 : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color:
                          isSelected
                              ? Colors.blue.shade400
                              : Colors.grey.shade300,
                      width: 1.5,
                    ),
                  ),
                  child: Text(
                    "${times[index]}s",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
