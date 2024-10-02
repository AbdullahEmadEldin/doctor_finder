import 'package:doctor_finder/core/di/dependency_injection.dart';
import 'package:doctor_finder/modules/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/models/doctor_model.dart';
import 'view/pages/doctor_details_page.dart';
import 'view/pages/home_page.dart';

class HomeRouter {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: _homePagesAnimationBuilder,
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecialties(),
            child: const HomePage(),
          ),
        );
      case DoctorDetailsPage.routeName:
        final doctor = settings.arguments as Doctor;
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: _doctorDetailsAnimationBuilder,
          pageBuilder: (context, animation, secondaryAnimation) =>
              DoctorDetailsPage(doctor: doctor),
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

  static Widget _doctorDetailsAnimationBuilder(
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
