import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/constants/enums.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/signup_cubit.dart';

class GenderPopMenu extends StatefulWidget {
  const GenderPopMenu({super.key});

  @override
  State<GenderPopMenu> createState() => _GenderPopMenuState();
}

class _GenderPopMenuState extends State<GenderPopMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorsManager().colorScheme.grey20.withOpacity(0.4),
        border: Border.all(
          color: ColorsManager().colorScheme.grey40,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.read<SignupCubit>().gender?.name.tr() ??
                AppStrings.gender.tr(),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: ColorsManager().colorScheme.grey60),
          ),
          PopupMenuButton(
            color: ColorsManager().colorScheme.grey20,
            padding: EdgeInsets.zero,
            initialValue: AppStrings.gender.tr(),
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: ColorsManager().colorScheme.grey60,
            ),
            iconSize: 30,
            itemBuilder: (context) => Gender.values
                .map(
                  (g) => PopupMenuItem(
                    child: Text(
                      g.name.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: ColorsManager().colorScheme.grey70),
                    ),
                    onTap: () {
                      context.read<SignupCubit>().gender = g;
                      setState(() {});
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
