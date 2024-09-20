import 'package:flutter/material.dart';

import '../../modules/auth/auth_router.dart';
import '../../modules/auth/login/view/pages/login_page.dart';
import '../../modules/onboarding/view/page/onboarding.dart';

class AppRouter {
  static Route? onGenerate(RouteSettings settings) {
    final String? route = mapRoute(settings.name);
    switch (route) {
      case OnboardingPage.routeName:
        return MaterialPageRoute(builder: (context) => const OnboardingPage());
      case LoginPage.routeName:
        return AuthRouter.onGenerate(settings);
      // default:
      //   return MaterialPageRoute(builder: (context) => const ErrorRouter());
    }
  }

  //********************************** Routes Mapper ************************************/
  /// This method for handling subRouters routes
  /// for e.x:
  ///   NavBarRouter (a main router)
  ///       -> HomePage (nav_bar/home_page)
  ///       -> ProfilePage  (nav_bar/profile_page)
  ///       -> SearchPage (nav_bar/search_page)
  /// the mapRouted method will split the route on / and return the second part as it's the //!subRoute
  ///! more complex e.x. => /nav_bar/home_page/book_details
  ///? In the high level router ==> the subRoute will be 'home_page'
  ///? In the subRouter ==> the subRoute will be 'book_details'
  ///? AND so on
  static String? mapRoute(String? route) {
    if (route != null) {
      List splatted = route.split('/');

      return '/${splatted[1]}';
    }
    return route;
  }
}
