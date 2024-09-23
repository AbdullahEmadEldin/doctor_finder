import 'package:doctor_finder/modules/home/view/widgets/home_banner.dart';
import 'package:doctor_finder/modules/home/view/widgets/specialties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doctors_list_view.dart';
import '../widgets/doctors_recommendtion.dart';
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
              const Specialties(),
              const DoctorsRecommendation(),
              SizedBox(height: 16.h),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
/**
 * eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzI3MTAzNjY2LCJleHAiOjE3MjcxOTAwNjYsIm5iZiI6MTcyNzEwMzY2NiwianRpIjoiTGpQUTlGZ3NhWVJSam41MSIsInN1YiI6IjIyNTciLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.hzrWFgC1P5lRRSqXhUL7yf8exMDedbOF1IhPloBjr94
 */