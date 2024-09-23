import 'package:flutter/material.dart';

import 'home_section_header.dart';

class DoctorsRecommendation extends StatelessWidget {
  const DoctorsRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionHeader(
          title: 'Dentists Doctors',
          actionTitle: 'See All',
          onTap: () {
            //TODO nav to all specialty.
          },
        ),
      ],
    );
  }
}
