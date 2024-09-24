import 'package:doctor_finder/core/constants/image_assets.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialtyTile extends StatelessWidget {
  final String? specialtyTitle;
  final String? specialtyImage;
  final bool isSpecialtySelected;
  final Function()? onTap;
  const SpecialtyTile({
    super.key,
    this.specialtyTitle,
    this.specialtyImage,
    this.isSpecialtySelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              color: ColorsManager().colorScheme.grey10,
              borderRadius: BorderRadius.circular(64.r),
              border: Border.all(
                color: isSpecialtySelected
                    ? ColorsManager().colorScheme.primary
                    : Colors.transparent,
                width: 1.3,
              ),
            ),
            child: Image.asset(
              specialtyImage ?? ImageAssets.generalSpec,
              scale: 2,
            ),
          ),
        ),
        Text(
          specialtyTitle ?? 'Spec',
          style: isSpecialtySelected
              ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: ColorsManager().colorScheme.primary,
                  )
              : Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorsManager().colorScheme.black,
                    fontSize: 12.sp,
                  ),
        ),
      ],
    );
  }
}
