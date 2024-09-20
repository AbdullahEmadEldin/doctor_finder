import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordCriteria extends StatelessWidget {
  final bool hasValidLength;
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  const PasswordCriteria({
    super.key,
    required this.hasValidLength,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        criteria(context, AppStrings.eightCharacters.tr(), hasValidLength),
        criteria(context, AppStrings.uppercaseCharacter.tr(), hasUppercase),
        criteria(context, AppStrings.lowercaseCharacter.tr(), hasLowercase),
        criteria(
            context, AppStrings.specialCharacter.tr(), hasSpecialCharacter),
        criteria(context, AppStrings.number.tr(), hasNumber),
      ],
    );
  }

  Row criteria(BuildContext context, String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager().colorScheme.grey70,
        ),
        SizedBox(width: 8.w),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasValidated ? ColorsManager().colorScheme.fillGreen : null),
        ),
      ],
    );
  }
}
