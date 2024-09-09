// ignore_for_file: prefer_const_constructors

import 'package:doctor_finder/core/lang_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/ui_helpers.dart';
import 'colors/colors_manager.dart';
import 'fonts_manager.dart';

class AppTextThemes {
  static TextTheme lightTextTheme(BuildContext context) => TextTheme(
        displayLarge: getSemiBoldStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 57),
        ),
        displayMedium: getSemiBoldStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 45),
        ),
        displaySmall: getSemiBoldStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 36),
        ),
        headlineLarge: getSemiBoldStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 32),
        ),
        headlineMedium: getRegularStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 28),
        ),
        headlineSmall: getRegularStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 26),
        ),
        titleLarge: getMediumStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 24),
        ),
        titleMedium: getMediumStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 22),
        ),
        titleSmall: getRegularStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 20),
        ),
        bodyLarge: getRegularStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 20),
        ),
        bodyMedium: getRegularStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 18),
        ),
        bodySmall: getRegularStyle(
          context,
          color: ColorsManager().colorScheme.primary,
          fontSize: UiHelper.getResponsiveDimension(context, baseDimension: 16),
        ),
      );

//!! Dark theme !!!
}

/// *******************************************************
/// This methods to make calling text styles more easier
/// And determine the needed properties in TextStyle.
/// *******************************************************
TextStyle _getTextStyle(
    BuildContext context, double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize.sp,
      fontFamily: context.locale.languageCode == LanguageType.arabic.code
          ? AppFonts.notoKufiArabic
          : AppFonts.montserrat,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
  BuildContext context, {
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    context,
    fontSize.sp,
    AppFontWeight.regular,
    color,
  );
}

// medium style

TextStyle getMediumStyle(
  BuildContext context, {
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    context,
    fontSize,
    AppFontWeight.medium,
    color,
  );
}

// medium style

TextStyle getLightStyle(
  BuildContext context, {
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    context,
    fontSize,
    AppFontWeight.light,
    color,
  );
}

// bold style

TextStyle getBoldStyle(
  BuildContext context, {
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(context, fontSize, AppFontWeight.bold, color);
}

// semibold style

TextStyle getSemiBoldStyle(
  BuildContext context, {
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(context, fontSize, AppFontWeight.semiBold, color);
}
