import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/colors/colors_manager.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.policy1.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: ColorsManager().colorScheme.grey60,
                ),
          ),
          TextSpan(
            text: AppStrings.policy2.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: ColorsManager().colorScheme.black,
                ),
          ),
          TextSpan(
            text: AppStrings.policy3.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  height: 2,
                  color: ColorsManager().colorScheme.grey60,
                ),
          ),
          TextSpan(
            text: AppStrings.policy4.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: ColorsManager().colorScheme.black,
                ),
          ),
        ],
      ),
    );
  }
}
