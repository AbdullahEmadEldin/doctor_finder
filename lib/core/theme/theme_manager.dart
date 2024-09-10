import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../services/cache/cache_helper.dart';
import 'colors/colors_manager.dart';
import 'text_styles_manager.dart';

class AppThemes {
  /// define a singleton instance
  ///
  AppThemes._internal();
  static final instance = AppThemes._internal();

  static ThemeMode? _value;
  ThemeMode? get themeMode => _value;

  updateThemeValue(bool isDark) {
    if (CacheHelper.getData(key: AppConstants.sharedPrefKeys.isDark) != null) {
      _value = CacheHelper.getData(key: AppConstants.sharedPrefKeys.isDark)
          ? ThemeMode.dark
          : ThemeMode.light;
    }
    _value = isDark ? ThemeMode.dark : ThemeMode.light;
    themeNotifier.value = _value;
  }

  final ValueNotifier<ThemeMode?> themeNotifier = ValueNotifier(
      CacheHelper.getData(key: AppConstants.sharedPrefKeys.isDark) ?? false
          ? ThemeMode.dark
          : _value);

  ThemeData lightAppTheme(BuildContext context) => ThemeData(
        // main colors
        primaryColor: ColorsManager().colorScheme.primary,
        primaryColorLight: ColorsManager().colorScheme.primary60,
        primaryColorDark: ColorsManager().colorScheme.grey100,
        scaffoldBackgroundColor:
            ColorsManager().colorScheme.background, // ripple effect color
        // card view theme

        // elevated button them
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(context,
                color: ColorsManager().colorScheme.primarySurface,
                fontSize: 17),
            backgroundColor: ColorsManager().colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        textTheme: AppTextThemes.lightTextTheme(context),
        // input decoration theme (text form field)
        inputDecorationTheme: InputDecorationTheme(
          // content padding
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          // hint style
          hintStyle: getRegularStyle(context,
              color: ColorsManager().colorScheme.grey50, fontSize: 14.sp),
          labelStyle: getMediumStyle(context,
              color: ColorsManager().colorScheme.grey50, fontSize: 14.sp),
          errorStyle: getRegularStyle(context,
              color: ColorsManager().colorScheme.fillRed),

          // enabled border style
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager().colorScheme.grey50, width: 0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),

          // focused border style
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager().colorScheme.primary, width: 1.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),

          // error border style
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager().colorScheme.fillRed, width: 1.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          // focused border style
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager().colorScheme.primary, width: 1.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        // label style
        progressIndicatorTheme: ProgressIndicatorThemeData(
            color: ColorsManager().colorScheme.primary),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: ColorsManager().colorScheme.primary80),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return ColorsManager().colorScheme.primary;
            } else {
              return Colors.transparent;
            }
          }),
          checkColor: WidgetStatePropertyAll(
              ColorsManager().colorScheme.primarySurface),
          side: BorderSide(color: ColorsManager().colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );

  ThemeData darkAppTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Colors.red, // ripple effect color
        brightness: Brightness.dark,
        textTheme: AppTextThemes.lightTextTheme(context),
      );
}
