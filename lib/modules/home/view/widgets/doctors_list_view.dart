import 'package:flutter/material.dart';

import '../../../../core/widgets/doctor_tile.dart';
import 'home_section_header.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          HomeSectionHeader(
            title: 'Dentists Doctors',
            actionTitle: 'See All',
            onTap: () {
              //TODO nav to all specialty.
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => const DoctorTile(),
            ),
          ),
        ],
      ),
    );
  }
}
