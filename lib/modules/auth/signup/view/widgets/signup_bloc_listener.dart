import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/modules/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:doctor_finder/modules/auth/signup/logic/cubit/signup_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/colors/colors_manager.dart';
import '../../../../../core/widgets/custom_alert_dialog.dart';
import '../../../login/view/pages/login_page.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        /// whenOrNull call back comes from Freezed library which I used to generate the cubit's state class.
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) =>
                  const Center(child: CircularProgressIndicator()),
            );
          },
          success: (loginResponse) {
            context.pop();
            _handleSignUpSuccessMsg(context, loginResponse.message);
          },
          failure: (message) {
            context.pop();
            _handleSignUpErrorMsg(context, message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _handleSignUpErrorMsg(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        message: message,
        actionString: AppStrings.ok.tr(),
        icon: Icon(
          Icons.error,
          color: ColorsManager().colorScheme.fillRed.withOpacity(0.7),
          size: 45.r,
        ),
      ),
    );
  }

  void _handleSignUpSuccessMsg(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        message: message + AppStrings.needToLogin.tr(),
        actionString: AppStrings.ok.tr(),
        icon: Icon(
          Icons.check_circle,
          color: ColorsManager().colorScheme.fillGreen.withOpacity(0.7),
          size: 45.r,
        ),
        onPressed: () {
          context.pop();
          context.pushReplacementNamed(LoginPage.routeName);
        },
      ),
    );
  }
}
