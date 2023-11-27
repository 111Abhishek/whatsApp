import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber600,
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.4),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue400,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray40002,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGrayE => BoxDecoration(
        color: appTheme.gray6001e,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green400,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo500,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen100,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange400,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA100,
      );
  static BoxDecoration get fillRedA400 => BoxDecoration(
        color: appTheme.redA400,
      );
  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray300,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray5001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.blueGray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray100,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray500,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray500 => BoxDecoration(
        color: appTheme.gray100,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray500,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.33,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.29),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.33,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.29),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder66 => BorderRadius.circular(
        66.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
