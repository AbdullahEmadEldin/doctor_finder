import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/helpers/app_regex.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_finder/modules/auth/login/view/widget/password_criteria.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/input_field.dart';

class EmailAndPasswordForm extends StatefulWidget {
  const EmailAndPasswordForm({super.key});

  @override
  State<EmailAndPasswordForm> createState() => _EmailAndPasswordFormState();
}

class _EmailAndPasswordFormState extends State<EmailAndPasswordForm> {
  late TextEditingController passwordController;
  bool hasValidLength = false;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;

  bool isObscureText = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;

    ///
    addPasswordControllerListener();
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().loginFormKey,
        child: Column(
          children: [
            InputField(
              controller: context.read<LoginCubit>().emailController,
              hintText: AppStrings.email.tr(),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return AppStrings.enterValidEmail.tr();
                }
              },
            ),
            SizedBox(height: 20.h),
            InputField(
              controller: passwordController,
              hintText: AppStrings.password.tr(),
              obscureText: !isObscureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: ColorsManager().colorScheme.primary,
                ),
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !addPasswordControllerListener()) {
                  return AppStrings.enterValidPassword.tr();
                }
              },
            ),
            SizedBox(height: 12.h),
            PasswordCriteria(
              hasValidLength: hasValidLength,
              hasUppercase: hasUppercase,
              hasLowercase: hasLowercase,
              hasNumber: hasNumber,
              hasSpecialCharacter: hasSpecialCharacter,
            )
          ],
        ));
  }

  /// check for password criteria using RegEx.
  bool addPasswordControllerListener() {
    bool hasValidPassword = false;
    passwordController.addListener(() {
      setState(() {
        hasValidLength = AppRegex.hasMinLength(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
    hasValidPassword = hasValidLength &&
        hasUppercase &&
        hasLowercase &&
        hasNumber &&
        hasSpecialCharacter;
    return hasValidPassword;
  }
}
