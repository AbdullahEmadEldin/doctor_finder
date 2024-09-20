import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/widgets/input_field.dart';
import 'package:doctor_finder/modules/auth/login/view/widget/password_criteria.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/theme/colors/colors_manager.dart';
import '../../logic/cubit/signup_cubit.dart';
import 'gender_pop_menu.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool hasValidLength = false;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;

  bool isObscureText = true;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    addPasswordControllerListener(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          InputField(
            controller: context.read<SignupCubit>().nameController,
            hintText: AppStrings.name.tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.enterName.tr();
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          InputField(
            controller: context.read<SignupCubit>().emailController,
            hintText: AppStrings.email.tr(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return AppStrings.enterValidEmail.tr();
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          InputField(
            controller: context.read<SignupCubit>().phoneController,
            hintText: AppStrings.phoneNumber.tr(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return AppStrings.enterPhoneNumber.tr();
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          const GenderPopMenu(),
          SizedBox(height: 16.h),
          InputField(
            controller: context.read<SignupCubit>().passwordController,
            hintText: AppStrings.password.tr(),
            obscureText: isObscureText,
            suffixIcon: _obscureIcon(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !addPasswordControllerListener(context)) {
                return AppStrings.enterValidPassword.tr();
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          InputField(
            controller:
                context.read<SignupCubit>().passwordConfirmationController,
            hintText: AppStrings.passwordConfirmation.tr(),
            obscureText: isObscureText,
            suffixIcon: _obscureIcon(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !addPasswordControllerListener(context)) {
                return AppStrings.enterValidPassword.tr();
              }
              return null;
            },
          ),
          SizedBox(height: 12.h),
          PasswordCriteria(
            hasValidLength: hasValidLength,
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
          ),
        ],
      ),
    );
  }

  IconButton _obscureIcon() {
    return IconButton(
      onPressed: () {
        setState(() {
          isObscureText = !isObscureText;
        });
      },
      icon: Icon(
        isObscureText ? Icons.visibility_off : Icons.visibility,
        color: ColorsManager().colorScheme.primary,
      ),
    );
  }

  /// check for password criteria using RegEx.
  bool addPasswordControllerListener(BuildContext context) {
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

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
