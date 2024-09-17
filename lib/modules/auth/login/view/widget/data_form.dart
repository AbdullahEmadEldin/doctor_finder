import 'package:doctor_finder/core/constants/app_strings.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/input_field.dart';

class DataForm extends StatefulWidget {
  const DataForm({super.key});

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        InputField(
          hintText: AppStrings.email.tr(),
        ),
        SizedBox(height: 20.h),
        InputField(
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
        ),
      ],
    ));
  }
}
