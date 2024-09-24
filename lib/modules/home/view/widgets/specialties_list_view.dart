import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/enums.dart';
import '../../data/models/specialties_response_model.dart';
import 'home_section_header.dart';
import 'specialty_tile.dart';

class SpecialtiesListView extends StatefulWidget {
  final List<DoctorSpecialty?> specialtiesData;
  const SpecialtiesListView({super.key, required this.specialtiesData});

  @override
  State<SpecialtiesListView> createState() => _SpecialtiesListViewState();
}

class _SpecialtiesListViewState extends State<SpecialtiesListView> {
  int _groupValue = -1;
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
        SizedBox(height: 12.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specialtiesData.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 8.w),
              child: SpecialtyTile(
                specialtyTitle: widget.specialtiesData[index]?.name,
                onTap: () {},
                // passing the specialty icon like this because there is no icon come from backend
                specialtyImage: widget.specialtiesData[index]?.name ==
                        DoctorSpecialtyEnum.values[index].name
                    ? DoctorSpecialtyEnum.values[index].icon
                    : null,
              ),
            ),
          ),
        )
      ],
    );
  }
}
