import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:doctor_finder/core/widgets/main_app_button.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_finder/modules/auth/login/view/widget/data_form.dart';
import 'package:doctor_finder/modules/auth/login/view/widget/dont_have_account.dart';
import 'package:doctor_finder/modules/auth/login/view/widget/stay_logged_in.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/login_bloc_listener.dart';
import '../widget/policy_text.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.welcome1.tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 12.h),
                Text(
                  AppStrings.welcome2.tr(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 35.h),
                const EmailAndPasswordForm(),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const StayLoggedCheckBox(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        AppStrings.forgotPassword.tr(),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: ColorsManager().colorScheme.primary),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.h),
                MainButton(
                  buttonText: AppStrings.login.tr(),
                  buttonHeight: 55.h,
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: ColorsManager().colorScheme.background,
                        fontWeight: FontWeight.w700,
                      ),
                  onPressed: () {
                    if (context
                        .read<LoginCubit>()
                        .loginFormKey
                        .currentState!
                        .validate()) {
                      context.read<LoginCubit>().login();
                    }
                  },
                ),
                SizedBox(height: 24.h),
                const TermsAndConditionsText(),
                SizedBox(height: 64.h),
                const DontHaveAccount(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
