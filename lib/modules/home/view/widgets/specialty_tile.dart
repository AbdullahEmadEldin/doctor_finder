import 'package:doctor_finder/core/constants/image_assets.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialtyTile extends StatelessWidget {
  final String? specialtyTitle;
  final String? specialtyImage;
  final Function()? onTap;
  const SpecialtyTile({
    super.key,
    this.specialtyTitle,
    this.specialtyImage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              color: ColorsManager().colorScheme.grey10,
              borderRadius: BorderRadius.circular(64.r),
              // border: Border.all(
              //   // color: ColorsManager().colorScheme.primary,
              //   width: 1.3,
              // ),
            ),
            child: Image.asset(
              specialtyImage ?? ImageAssets.generalSpec,
              scale: 2,
            ),
          ),
        ),
        Text(
          specialtyTitle ?? 'Spec',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: ColorsManager().colorScheme.black),
        ),
      ],
    );
  }
}
