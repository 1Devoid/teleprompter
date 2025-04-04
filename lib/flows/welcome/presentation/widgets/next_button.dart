import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleprompter/common/app_constants.dart';
import 'package:teleprompter/common/buttons/base_button.dart';
import 'package:teleprompter/common/buttons/enums/btn_type.dart';
import 'package:teleprompter/flows/welcome/logic/page_view_selector_cubit.dart';
import 'package:teleprompter/flows/welcome/presentation/enums/tutorial_page_types.dart';
import 'package:teleprompter/generated/locale_keys.g.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PageViewSelectorCubit>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: C.leftRightPadding),
      child: BlocBuilder<PageViewSelectorCubit, int>(
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: BaseButton(
                  type: ButtonType.pFill,
                  isBig: true,
                  title: LocaleKeys.onboarding_next_screen_btn.tr(),
                  onTap: () => cubit.increment(context),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
