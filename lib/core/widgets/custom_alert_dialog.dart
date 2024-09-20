import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../theme/colors/colors_manager.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;
  final String actionString;
  final Widget icon;
  final Function()? onPressed;
  const CustomAlertDialog({
    super.key,
    required this.message,
    required this.actionString,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: icon,
      content: Text(
        message,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: onPressed ?? () => context.pop(),
          child: Text(
            actionString,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorsManager().colorScheme.primary),
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
