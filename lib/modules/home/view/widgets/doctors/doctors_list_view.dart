import 'package:doctor_finder/modules/home/logic/home_cubit.dart';
import 'package:doctor_finder/modules/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'doctor_tile.dart';
import '../../../data/models/doctor_model.dart';

class DoctorsListView extends StatefulWidget {
  final List<Doctor?> doctorsOfSpecificSpecialty;
  const DoctorsListView({
    super.key,
    required this.doctorsOfSpecificSpecialty,
  });

  @override
  State<DoctorsListView> createState() => _DoctorsListViewState();
}

class _DoctorsListViewState extends State<DoctorsListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.doctorsOfSpecificSpecialty.length,
        itemBuilder: (context, index) => DoctorTile(
          doctor: widget.doctorsOfSpecificSpecialty[index]!,
        ),
      ),
    );
  }
}
