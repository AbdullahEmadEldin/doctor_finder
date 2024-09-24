import 'package:doctor_finder/modules/home/logic/home_cubit.dart';
import 'package:doctor_finder/modules/home/logic/home_state.dart';
import 'package:doctor_finder/modules/home/view/widgets/specialties/specialties_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          specializationsLoading: () =>
              const CircularProgressIndicator.adaptive(),
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
}
