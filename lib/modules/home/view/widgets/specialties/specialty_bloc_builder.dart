import 'package:doctor_finder/modules/home/logic/home_cubit.dart';
import 'package:doctor_finder/modules/home/logic/home_state.dart';
import 'package:doctor_finder/modules/home/view/widgets/doctors/doctor_tile.dart';
import 'package:doctor_finder/modules/home/view/widgets/specialties/specialties_list_view.dart';
import 'package:doctor_finder/modules/home/view/widgets/specialties/specialty_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SpecialtyBlocBuilder extends StatelessWidget {
  const SpecialtyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecialtiesLoading ||
          current is SpecialtiesSuccess ||
          current is SpecialtiesError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => setUpLoadingSpecialty(),
          specializationsSuccess: (specModel) {
            final specialtiesDataList = specModel.data;

            return SpecialtiesListView(
                specialtiesData: specialtiesDataList ?? []);
          },
          specializationsError: (message) {
            return Text(message);
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }

  Widget setUpLoadingSpecialty() {
    return Expanded(
      child: Column(
        children: [
          Skeletonizer(
            enabled: true,
            // enableSwitchAnimation: true,
            child: SizedBox(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(16.w),
                  child: const SpecialtyTile(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Skeletonizer(
              enabled: true,
              //enableSwitchAnimation: true,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(16.w),
                  child: const DoctorTile(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
