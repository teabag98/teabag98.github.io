import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class AppTextFieldOutlined extends StatefulWidget {
  final TextInputType? keyboard;
  final TextEditingController? controller;
  final String? hintText;
  final bool isObscure;
  final bool enabled;
  final bool autocorrect;
  final bool multiline;
  final Widget? suffix;
  final Widget? prefix;

  final bool showCursor;
  final Color cursorColor;
  final int? maxLength;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final int? minLines;
  final FocusNode? focusNode;
  final bool autoFocus;
  final TextStyle? textFieldStyle;
  final TextStyle? hintTextStyle;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;

  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;

  final ValueChanged<String>? onSubmitted;
  const AppTextFieldOutlined({
    Key? key,
    this.keyboard,
    this.controller,
    this.hintText,
    this.autoFocus = false,
    this.inputFormatters,
    this.isObscure = false,
    this.multiline = false,
    this.enabled = true,
    this.autocorrect = false,
    this.cursorColor = AppColors.black,
    this.showCursor = true,
    this.suffix,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.focusNode,
    this.validator,
    this.textFieldStyle,
    this.hintTextStyle,
    this.prefix,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.textInputAction,
  }) : super(key: key);

  @override
  _AppTextFieldOutlinedState createState() => _AppTextFieldOutlinedState();
}

class _AppTextFieldOutlinedState extends State<AppTextFieldOutlined> {
  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      autofocus: widget.autoFocus,
      obscureText: widget.isObscure,
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      style: widget.textFieldStyle ??
          Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: _sc.heightScaledSize(16),
                color: Colors.white,
              ),
      textAlignVertical: TextAlignVertical.center,
      obscuringCharacter: '•',
      keyboardType: widget.keyboard,
      showCursor: widget.showCursor,
      cursorColor: widget.cursorColor,
      maxLength: widget.maxLength,
      minLines: widget.multiline ? null : 1,
      /** widget.minLines**/
      maxLines: widget.multiline ? null : 1,
      /** widget.maxLines**/
      expands: widget.multiline,
      // onSubmitted: widget.onSubmitted,
      onEditingComplete: widget.onEditingComplete,
      // buildCounter: (context, {currentLength ?? 3,  isFocused, maxLength}) => null,
      inputFormatters: widget.inputFormatters ??
          (widget.keyboard == TextInputType.number
              ? [FilteringTextInputFormatter.digitsOnly]
              : []),
      enabled: widget.enabled,

      autocorrect: widget.autocorrect,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle ??
            Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: _sc.heightScaledSize(16),
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
        suffixIcon: widget.suffix,
        prefixIcon: widget.prefix,
        errorStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: _sc.heightScaledSize(16),
              color: Colors.white60,
              fontWeight: FontWeight.bold,
            ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: _sc.heightScaledSize(50),
          maxWidth: _sc.heightScaledSize(50),
          minWidth: _sc.heightScaledSize(50),
        ),
        filled: true,
        fillColor: AppColors.greyLight,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 5.0.w,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          maxHeight: _sc.heightScaledSize(50),
          maxWidth: _sc.heightScaledSize(50),
          minWidth: _sc.heightScaledSize(50),
        ),
      ),
    );
  }
}
