import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? label;
  final VoidCallback onTap;
  final bool isSecondary;
  final bool isDisabled;
  final bool isIconOnly;
  final Widget? prefix;
  final Widget? suffix;
  final double? width;
  final double height;
  final Widget? icon;
  final double fontSize;
  final Color? fontColor;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final MainAxisAlignment? mainAxisAlignment;

  const AppButton({
    Key? key,
    this.label,
    required this.onTap,
    this.isSecondary = false,
    this.isDisabled = false,
    this.isIconOnly = false,
    this.prefix,
    this.suffix,
    this.width,
    this.height = 54,
    this.icon,
    this.fontSize = 14,
    this.fontColor,
    this.color,
    this.padding = EdgeInsets.zero,
    this.borderRadius,
    this.mainAxisAlignment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return ElevatedButton(
      onPressed: isDisabled ? null : onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: fontColor,
        backgroundColor: isDisabled
            ? AppColors.greyLight
            : color ??
                (!isSecondary ? AppColors.primaryColor : AppColors.black),
        alignment: Alignment.center,
        side: BorderSide.none,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        padding: padding ?? EdgeInsets.all(_sc.isWiderWidth ? 0 : 10),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ??
              BorderRadius.all(
                Radius.circular(_sc.heightScaledSize(8)),
              ),
          side: BorderSide.none,
        ),
      ),
      child: Container(
        height: _sc.heightScaledSize(height),
        width: _sc.heightScaledSize(width ?? (isIconOnly ? 64 : 131)),
        // padding: padding ?? EdgeInxsets.all(_sc.isWiderWidth ? 0 : 10),
        decoration: BoxDecoration(
          // color: isDisabled || onTap == null
          //     ? AppColors.greyLight
          //     : color ?? (!isSecondary ? AppColors.yellow : AppColors.black),
          borderRadius: borderRadius ??
              BorderRadius.all(
                Radius.circular(_sc.heightScaledSize(20)),
              ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: <Widget>[
              if (prefix != null && !isIconOnly)
                SizedBox(width: _sc.heightScaledSize(4)),
              if (!isIconOnly) prefix ?? const SizedBox(),
              if (!isIconOnly)
                AutoSizeText(
                  label ?? '',
                  maxLines: 1,
                  style: fontColor == null
                      ? _sc.buttonTextTheme
                      : _sc.buttonTextTheme.copyWith(
                          fontSize: fontSize - (_sc.isWiderWidth ? 0 : 3),
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                ),
              if (suffix != null && !isIconOnly)
                SizedBox(width: _sc.heightScaledSize(4)),
              if (!isIconOnly) suffix ?? const SizedBox(),
              if (isIconOnly) icon ?? const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
