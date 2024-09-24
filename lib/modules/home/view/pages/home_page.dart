import 'package:doctor_finder/modules/home/view/widgets/home_banner.dart';
import 'package:doctor_finder/modules/home/view/widgets/specialties/specialty_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doctors/doctors_bloc_builder.dart';
import '../widgets/home_top_bar.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const HomeTopBar(),
              SizedBox(height: 28.h),
              const HomeBanner(),
              SizedBox(height: 16.h),
              const SpecialtyBlocBuilder(),
              SizedBox(height: 8.h),
              const DoctorsBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
