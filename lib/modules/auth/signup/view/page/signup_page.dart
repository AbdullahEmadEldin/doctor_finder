import 'package:doctor_finder/modules/auth/login/view/pages/login_page.dart';
import 'package:doctor_finder/modules/auth/signup/view/widgets/signup_bloc_listener.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/colors/colors_manager.dart';
import '../../../../../core/widgets/main_app_button.dart';
import '../../../login/view/widget/policy_text.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../widgets/already_have_account.dart';
import '../widgets/signup_form.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = LoginPage.routeName + '/signup_page';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.register.tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 16.h),
                const SignUpForm(),
                SizedBox(height: 16.h),
                MainButton(
                    buttonText: AppStrings.createAccount.tr(),
                    textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: ColorsManager().colorScheme.background,
                          fontWeight: FontWeight.w700,
                        ),
                    onPressed: () {
                      if (context
                          .read<SignupCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        context.read<SignupCubit>().signUp();
                      }
                    }),
                SizedBox(height: 12.h),
                const TermsAndConditionsText(),
                SizedBox(height: 8.h),
                const AlreadyHaveAccount(),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
