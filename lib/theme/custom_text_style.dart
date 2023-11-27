import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 17.fSize,
      );
  static get bodyLargeGray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40001,
        fontSize: 17.fSize,
      );
  static get bodyLargeLightblueA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
      );
  static get bodyLargeLightblueA70017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
      );
  static get bodyLargeLightblueA700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get bodyLargeOnPrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get bodyLargeOnPrimary_2 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get bodyLargeRed50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red50001,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumLightblueA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray40012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmallHelveticaNeueOnPrimaryContainer =>
      theme.textTheme.displaySmall!.helveticaNeue.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 38.fSize,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 27.fSize,
      );
  // Label text style
  static get labelLargeLightblueA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimaryMedium => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumLightblueA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlueA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeRed50001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red50001,
      );
  static get titleLargeSFProTextBlack900 =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        color: appTheme.black900,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 17.fSize,
      );
  static get titleMediumLightblueA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 19.fSize,
      );
  static get titleMediumLightblueA70017 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'Helvetica Neue',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }
}
