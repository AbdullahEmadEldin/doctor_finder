import 'package:doctor_finder/core/di/dependency_injection.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/lang_manager.dart';
import 'core/services/cache/cache_helper.dart';
import 'doc_app_entry.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  setUpGetIt();
  final String startLocale = await LanguageManager.getAppLang();
  CacheHelper.init();
  // Set the status bar to the app background
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorsManager()
          .colorScheme
          .background, // Make the status bar transparent
      statusBarIconBrightness:
          Brightness.dark, // Set icon brightness (optional)
    ),
  );

  // runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => MyApp()));
  runApp(
    EasyLocalization(
        startLocale: Locale(startLocale),
        supportedLocales: [
          Locale(LanguageType.english.code),
          Locale(LanguageType.arabic.code)
        ],
        path: 'assets/translations',
        child: DocApp()),
  );
}
