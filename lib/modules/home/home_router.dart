import 'package:flutter/material.dart';

import 'view/pages/home_page.dart';

class HomeRouter
 {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: _homePagesAnimationBuilder,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomePage(),
        );
      default:
        return null;
    }
  }

  static Widget _homePagesAnimationBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: curve,
      reverseCurve: Curves.bounceInOut,
    );
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: tween.animate(curvedAnimation),
      child: child,
    );
  }
}
