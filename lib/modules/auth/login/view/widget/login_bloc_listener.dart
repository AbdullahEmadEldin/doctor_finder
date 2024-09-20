import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_strings.dart';

/// This a new practice for bloc listener to isolate it from the UI
class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Sucess')));
          },
          failure: (message) {
            context.pop();
            _handleLoginErrorMsg(context, message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _handleLoginErrorMsg(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error,
          color: ColorsManager().colorScheme.fillRed,
        ),
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text(
              AppStrings.ok.tr(),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: ColorsManager().colorScheme.primary),
            ),
          ),
        ],
        actionsAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
