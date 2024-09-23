import 'package:doctor_finder/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors_manager.dart';
import 'home_section_header.dart';

class Specialties extends StatelessWidget {
  const Specialties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionHeader(
          title: 'Doctor Specialty',
          actionTitle: 'See All',
          onTap: () {
            //TODO nav to all specialty.
          },
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 120.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DoctorSpecialty.values.length,
            itemBuilder: (context, index) => DoctorSpecialty.values
                .map((s) => Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: index == 0 ? 0 : 24.w),
                      child: _buildSpecialtyTile(s, context),
                    ))
                .toList()[index],
          ),
        )
      ],
    );
  }

  Widget _buildSpecialtyTile(DoctorSpecialty s, BuildContext context) {
    return Column(
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
    );
  }
}
