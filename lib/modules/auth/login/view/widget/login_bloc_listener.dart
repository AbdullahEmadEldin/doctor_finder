import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/core/theme/colors/colors_manager.dart';
import 'package:doctor_finder/core/widgets/custom_toast.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/services/cache/cache_helper.dart';
import '../../../../../core/widgets/custom_alert_dialog.dart';
import '../../../../home/view/pages/home_page.dart';

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
            showCustomToast(context, 'Successfully logged in');
            context.pushReplacementNamed(HomePage.routeName);
            // This value is assigned in StayLoggedCheckBox widget.
             CacheHelper.saveData(
                key: SharedPrefKeys.stayLoggedIn,
                value: context.read<LoginCubit>().rememberMe,
              );
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
      builder: (context) => CustomAlertDialog(
        message: message,
        actionString: AppStrings.ok.tr(),
        icon: Icon(
          Icons.error,
          color: ColorsManager().colorScheme.fillRed,
        ),
      ),
    );
  }
}
