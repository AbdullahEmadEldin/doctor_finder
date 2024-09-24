import 'package:doctor_finder/core/constants/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors_manager.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Abdullah!',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: ColorsManager().colorScheme.black,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text('How are you today?',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: ColorsManager().colorScheme.grey70,
                    ))
          ],
        ),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: ColorsManager().colorScheme.grey20,
            child: Badge(
              smallSize: 8.r,
              backgroundColor: ColorsManager().colorScheme.fillRed,
              child: Image.asset(
                ImageAssets.notificationIcon,
                height: 24.h,
              ),
            ),
          ),
        )
      ],
    );
  }
}
