import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors/colors_manager.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key});

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
            color: const Color(0xffF4F8FF),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  width: 110.w,
                  height: 120.h,
                  'https://cdn.punchng.com/wp-content/uploads/2023/09/20144750/Umoh-Michael-e1695217670244.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16.w),
              Column(
                children: [
                  Text(
                    'Dr. Abdullah Emad',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorsManager().colorScheme.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Dentist | Cairo, Egypt',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: ColorsManager().colorScheme.grey80,
                          // fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 4.h),
                  _doctorPhone(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _doctorPhone() {
    return Row(
      children: [
        Icon(
          Icons.phone,
          color: ColorsManager().colorScheme.grey60,
        ),
        SizedBox(width: 4.w),
        Text('+201008233760')
      ],
    );
  }
}
