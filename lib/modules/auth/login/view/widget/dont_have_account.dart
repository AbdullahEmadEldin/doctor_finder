import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/modules/auth/signup/view/page/signup_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/colors/colors_manager.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: AppStrings.dontHaveAccount.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: ColorsManager().colorScheme.black,
                  ),
            ),
            TextSpan(
              text: AppStrings.signUp.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: ColorsManager().colorScheme.primary,
                  ),
              recognizer: TapGestureRecognizer()
                ..onTap =
                    () => context.pushReplacementNamed(SignUpPage.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
