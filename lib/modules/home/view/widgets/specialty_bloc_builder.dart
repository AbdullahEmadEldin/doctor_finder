import 'package:doctor_finder/modules/home/logic/specialties_cubit.dart';
import 'package:doctor_finder/modules/home/logic/specialties_state.dart';
import 'package:doctor_finder/modules/home/view/widgets/specialties_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctors_list_view.dart';

class SpecialtyAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecialtyAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialtiesCubit, SpecialtiesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CircularProgressIndicator.adaptive(),
          success: (specModel) {
            final specialtiesDataList = specModel.data;
            return Expanded(
              child: Column(
                children: [
                  SpecialtiesListView(
                      specialtiesData: specialtiesDataList ?? []),
                  SizedBox(height: 8.h),
                  const DoctorsListView(),
                ],
              ),
            );
          },
          failure: (message) {
            return Text(message);
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
