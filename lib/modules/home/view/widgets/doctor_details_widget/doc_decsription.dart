import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors/colors_manager.dart';

class DocDescription extends StatelessWidget {
  final String sectionTitle;
  final String desc;
  const DocDescription({
    super.key,
    required this.desc,
    required this.sectionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sectionTitle,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorsManager().colorScheme.black,
                ),
          ),
          SizedBox(height: 8.h),
          Text(
            desc,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: ColorsManager().colorScheme.grey70,
                ),
          ),
        ],
      ),
    );
  }
}
