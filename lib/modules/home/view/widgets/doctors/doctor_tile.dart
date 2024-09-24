import 'package:doctor_finder/modules/home/data/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors/colors_manager.dart';

class DoctorTile extends StatelessWidget {
  final Doctor? doctor;
  const DoctorTile({
    super.key,
    this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
      child: Material(
        elevation: 1,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsManager().colorScheme.background,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  width: 110.w,
                  height: 120.h,
                  // there is no doctor's image comes from server, so this is as a placeholder
                  'https://cdn-icons-png.flaticon.com/512/6007/6007346.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Dr.${doctor?.name ?? 'Doctor Name'}',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: ColorsManager().colorScheme.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '${doctor?.degree} | ${doctor?.city?.name}',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: ColorsManager().colorScheme.grey80,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 4.h),
                    _doctorPhone(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _doctorPhone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.phone,
          color: ColorsManager().colorScheme.grey60,
        ),
        SizedBox(width: 8.w),
        Text(doctor?.phone ?? '+20123456789'),
      ],
    );
  }
}
