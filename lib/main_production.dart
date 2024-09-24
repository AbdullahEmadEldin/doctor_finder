import 'package:doctor_finder/core/di/dependency_injection.dart';
import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:doctor_finder/modules/home/view/pages/home_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/constants.dart';
import 'core/lang_manager.dart';
import 'core/services/cache/cache_helper.dart';
import 'doc_app_entry.dart';
import 'modules/auth/login/view/pages/login_page.dart';
import 'modules/onboarding/view/page/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  setUpGetIt();
  final String startLocale = await LanguageManager.getAppLang();
  CacheHelper.init();
  // Set initial route
  final String initialRoute = await handleInitialRoute();
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
        child: DocApp(
          initialRoute: initialRoute,
        )),
  );
}

Future<String> handleInitialRoute() async {
  String initialRoute;
  String? token = await CacheHelper.getSecuredString(SharedPrefKeys.token);

  bool firstLaunch =
      await CacheHelper.getData(key: SharedPrefKeys.firstLaunch) ?? true;

  bool stayLoggedIn =
      await CacheHelper.getData(key: SharedPrefKeys.stayLoggedIn) ?? false;
  if (firstLaunch) {
    initialRoute = OnboardingPage.routeName;
  } else if (!token.isNullOrEmpty() && stayLoggedIn) {
    initialRoute = HomePage.routeName;
  } else {
    initialRoute = LoginPage.routeName;
  }
  // if(!token.isNullOrEmpty()){
  return initialRoute;
  // }
}
