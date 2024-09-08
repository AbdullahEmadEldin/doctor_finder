import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/lang_manager.dart';
import 'core/services/cache/cache_helper.dart';
import 'doc_app_entry.dart';

void main() async {
  // Set the status bar to transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make the status bar transparent
      statusBarIconBrightness:
          Brightness.dark, // Set icon brightness (optional)
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  final String startLocale = await LanguageManager.getAppLang();
  CacheHelper.init();
  // runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => MyApp()));
  runApp(
    EasyLocalization(
      startLocale: Locale(startLocale),
      supportedLocales: [
        Locale(LanguageType.english.code),
        Locale(LanguageType.arabic.code)
      ],
      //TODO handling translations
      path: "assets/translations",
      child: DocApp(),
    ),
  );
}
