import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:flutter/material.dart';

class ErrorRouter extends StatelessWidget {
  const ErrorRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager().colorScheme.fillRed,
      body: const Center(
        child: Text('HIIIII, There is no router like this '),
      ),
    );
  }
}
