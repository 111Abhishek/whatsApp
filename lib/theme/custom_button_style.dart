import 'dart:ui';
import 'package:what_sapp/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900,
      );

  // Outline button style
  static ButtonStyle get outlineGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray100,
        shadowColor: appTheme.gray500,
        elevation: 1,
      );
  static ButtonStyle get outlineOnPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shadowColor: theme.colorScheme.onPrimary.withOpacity(0.29),
        elevation: 0,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
