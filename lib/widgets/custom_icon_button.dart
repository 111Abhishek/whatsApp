import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.red50001,
                  borderRadius: BorderRadius.circular(10.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50001,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber600,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillPurpleA => BoxDecoration(
        color: appTheme.purpleA100,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange400,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillBlueTL6 => BoxDecoration(
        color: appTheme.blue400,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA400,
        borderRadius: BorderRadius.circular(6.h),
      );
}
