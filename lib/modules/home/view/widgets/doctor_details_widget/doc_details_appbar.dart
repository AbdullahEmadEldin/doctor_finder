import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsAppBar extends StatelessWidget {
  const DoctorDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => context.pop(),
              child: _buildBarIcon(CupertinoIcons.back)),
          Center(
            child: Text(
              'Doctor Details',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: ColorsManager().colorScheme.black,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          _buildBarIcon(CupertinoIcons.share),
        ],
      ),
    );
  }

  Container _buildBarIcon(IconData icon) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorsManager().colorScheme.grey40,
        ),
      ),
      child: Icon(icon),
    );
  }
}
