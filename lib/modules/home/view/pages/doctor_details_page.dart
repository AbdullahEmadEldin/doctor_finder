import 'package:doctor_finder/core/widgets/main_app_button.dart';
import 'package:doctor_finder/modules/home/data/models/doctor_model.dart';
import 'package:doctor_finder/modules/home/view/pages/home_page.dart';
import 'package:doctor_finder/modules/home/view/widgets/doctor_details_widget/doc_decsription.dart';
import 'package:doctor_finder/modules/home/view/widgets/doctors/doctor_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors_manager.dart';
import '../widgets/doctor_details_widget/doc_details_appbar.dart';

class DoctorDetailsPage extends StatelessWidget {
  static const String routeName = '${HomePage.routeName}/doctor_details_page';
  final Doctor doctor;
  const DoctorDetailsPage({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoctorDetailsAppBar(),
              SizedBox(height: 16.h),
              DoctorTile(
                doctor: doctor,
                clickable: false,
              ),
              SizedBox(height: 8.h),
              DocDescription(
                sectionTitle: 'Description',
                desc: doctor.description ?? 'N/A',
              ),
              SizedBox(height: 4.h),
              DocDescription(
                sectionTitle: 'Specialization',
                desc: doctor.specialization?.name ?? 'N/A',
              ),
              SizedBox(height: 4.h),
              DocDescription(
                sectionTitle: 'Working Hours',
                desc: "${doctor.startTime} -- ${doctor.endTime}",
              ),
              SizedBox(height: 4.h),
              DocDescription(
                sectionTitle: 'Address',
                desc: doctor.address ?? 'N/A',
              ),
              SizedBox(height: 4.h),
              DocDescription(
                sectionTitle: 'Price',
                desc: doctor.price.toString() + ' \$',
              ),
              SizedBox(height: 48.h),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: MainButton(
                  buttonText: 'Schedule Appointment',
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: ColorsManager().colorScheme.background,
                        fontWeight: FontWeight.w700,
                      ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
