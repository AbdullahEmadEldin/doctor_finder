import 'package:flutter/material.dart';

import '../../../../core/theme/colors/colors_manager.dart';

class HomeSectionHeader extends StatelessWidget {
  final String title;
  final String actionTitle;
  final Function()? onTap;
  const HomeSectionHeader({
    super.key,
    required this.title,
    required this.actionTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: ColorsManager().colorScheme.black,
              fontWeight: FontWeight.w700),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            actionTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorsManager().colorScheme.primary),
          ),
        )
      ],
    );
  }
}
