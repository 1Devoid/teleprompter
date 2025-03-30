import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teleprompter/common/app_styles.dart';

import 'app_colors.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.title = '',
    this.onChanged,
    this.placeholder = '',
    this.initialText,
    this.inputFormatters,
    this.keyboardType,
    this.errorText,
    this.helperText,
    this.focusNode,
    this.enabled = true,
    this.autofocus = false,
    this.maxLines = 1,
    this.suffixWidget,
    this.textInputAction,
  });

  final TextEditingController? controller;
  final String title;
  final ValueChanged<String>? onChanged;
  final String placeholder;
  final String? initialText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? helperText;
  final String? errorText;
  final FocusNode? focusNode;
  final bool enabled;
  final bool autofocus;
  final int maxLines;
  final Widget? suffixWidget;
  final TextInputAction? textInputAction;

  @override
  State<AppTextField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<AppTextField> {
  late TextEditingController _controller;
  FocusNode? _focus;

  @override
  void initState() {
    if (widget.controller == null) {
      _controller = TextEditingController(text: widget.initialText);
    } else {
      _controller = widget.controller!;
      _controller.text = widget.initialText ?? '';
    }

    if (widget.focusNode == null) _focus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focus?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.title, style: AppStyles.shared.titleMdRegular),
        SizedBox(height: 4.sp),
        TextField(
          autofocus: widget.autofocus,
          controller: _controller,
          focusNode: _focus,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          onChanged: widget.onChanged,
          style: AppStyles.shared.titleMdRegular,
          cursorColor: AppColors.shared.fgNeutralPrimary,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType ?? TextInputType.text,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.5.sp,
              horizontal: _horizontalPadding,
            ),
            suffixIcon:
                widget.suffixWidget == null
                    ? null
                    : Container(
                      alignment: Alignment.center,
                      width: 24.sp,
                      height: 24.sp,
                      child: widget.suffixWidget,
                    ),
            filled: true,
            helper:
                widget.helperText == null
                    ? null
                    : Transform.translate(
                      offset: Offset(-_horizontalPadding, 0),
                      child: Text(
                        widget.helperText ?? '',
                        style:
                            widget.enabled
                                ? AppStyles
                                    .shared
                                    .bodyMdRegularFgNeutralSecondary
                                : AppStyles
                                    .shared
                                    .bodyMdRegularFgNeutralTertiary,
                      ),
                    ),
            error:
                widget.errorText == null
                    ? null
                    : Transform.translate(
                      offset: Offset(-_horizontalPadding, 0),
                      child: Text(
                        widget.errorText ?? '',
                        style: AppStyles.shared.bodyMdRegularFgCritical,
                      ),
                    ),
            fillColor:
                widget.enabled
                    ? AppColors.shared.elevationBase
                    : AppColors.shared.bgNeutralDisabled,
            hintText: widget.placeholder,
            focusedBorder: _getFocusBorder,
            border: _getBorder,
            enabledBorder: _getBorder,
            disabledBorder: _getDisabledBorder,
            errorBorder: _getErrorBorder,
            focusedErrorBorder: _getErrorBorder,
          ),
        ),
      ],
    );
  }

  static final _horizontalPadding = 16.sp;

  static get _getBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      width: 1.sp,
      color: AppColors.shared.borderNeutralSecondary,
    ),
  );

  static get _getDisabledBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      width: 1.sp,
      color: AppColors.shared.borderNeutralSecondary,
    ),
  );

  static get _getErrorBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(width: 1.sp, color: AppColors.shared.borderCritical),
  );

  static get _getFocusBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(width: 1.sp, color: AppColors.shared.borderPrimary),
  );
}
