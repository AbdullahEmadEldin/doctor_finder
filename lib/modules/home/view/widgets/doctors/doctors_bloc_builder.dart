import 'package:doctor_finder/modules/home/logic/home_cubit.dart';
import 'package:doctor_finder/modules/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctors) =>
              DoctorsListView(doctorsOfSpecificSpecialty: doctors!),
          doctorsError: (err) => Text(err.message),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
