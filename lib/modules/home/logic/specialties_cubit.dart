import 'package:doctor_finder/modules/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'specialties_state.dart';

class SpecialtiesCubit extends Cubit<SpecialtiesState> {
  final HomeRepo _homeRepo;
  SpecialtiesCubit(this._homeRepo) : super(const SpecialtiesState.initial());

  Future<void> getSpecialties() async {
    emit(const SpecialtiesState.loading());
    final res = await _homeRepo.getSpecialties();
    res.when(
      success: (specialties) {
        print('???? success ==========>> ${specialties.data?.length}');
        emit(SpecialtiesState.success(specialties));
      },
      failure: (error) {
        print('???? 5555----------------------->>> ${error.apiErrorModel.errorDetails}');

        emit(
          SpecialtiesState.failure(message: error.apiErrorModel.message),
        );
      },
    );
  }
}
