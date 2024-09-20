import 'package:doctor_finder/core/di/dependency_injection.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_finder/modules/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login/view/pages/login_page.dart';
import 'signup/view/page/signup_page.dart';


class AuthRouter {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: _authPagesAnimationBuilder,
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginPage(),
          ),
        );
        case SignUpPage.routeName:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: _authPagesAnimationBuilder,
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpPage(),
          ),
        );
      default:
        return null;
    }
  }

  static Widget _authPagesAnimationBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    const begin = Offset(0.0, 1.0);
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
