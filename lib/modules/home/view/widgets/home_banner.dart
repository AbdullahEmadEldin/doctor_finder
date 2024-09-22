import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/theme/colors/colors_manager.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180.h,
          width: 470.w,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            image: const DecorationImage(
              image: AssetImage(ImageAssets.bannerBackground),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book and \nschedule with\nnearest doctor',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: ColorsManager().colorScheme.background),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(120.w, 20.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0.r),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: ColorsManager().colorScheme.primary,
                          fontWeight: FontWeight.w600),
                    )),
              )
            ],
          ),
        ),
        Positioned(
          right: -8.r,
          top: -55.h,
          child: Image.asset(
            ImageAssets.doctorBanner,
            height: 230.h,
          ),
        ),
      ],
    );
  }
}
