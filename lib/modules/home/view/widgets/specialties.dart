import 'package:doctor_finder/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors_manager.dart';

class Specialties extends StatelessWidget {
  const Specialties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctor Specialty',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: ColorsManager().colorScheme.black,
                  fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                //TODO Navigate to all Specialties page
              },
              child: Text(
                'See All',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: ColorsManager().colorScheme.primary),
              ),
            )
          ],
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 120.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DoctorSpecialty.values.length,
            itemBuilder: (context, index) => DoctorSpecialty.values
                .map((s) => _buildSpecialtyTile(s, context))
                .toList()[index],
          ),
        )
      ],
    );
  }

  Widget _buildSpecialtyTile(DoctorSpecialty s, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Column(
        children: [
          Image.asset(
            s.icon,
            height: 65.h,
          ),
          Text(
            s.name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorsManager().colorScheme.black),
          ),
        ],
      ),
    );
  }
}
