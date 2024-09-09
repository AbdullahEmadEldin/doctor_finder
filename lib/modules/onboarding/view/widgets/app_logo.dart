import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/constants/svg_assets.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(SvgAssets.logo),
        SizedBox(
          width: 6.w,
        ),
        Text(
          AppStrings.appName.tr(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: ColorsManager().colorScheme.primary80,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
