import 'package:doctor_finder/core/helpers/extensions.dart';
import 'package:doctor_finder/modules/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/networking/exceptions.dart';
import '../data/models/doctor_model.dart';
import '../data/models/specialties_response_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<DoctorSpecialty?>? specializationsList = [];

  Future<void> getSpecialties() async {
    emit(const HomeState.specializationsLoading());
    final res = await _homeRepo.getSpecialties();
    res.when(
      success: (specializationsResponseModel) {
          specializationsList =
            specializationsResponseModel.data ?? [];

        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);
        emit(HomeState.specializationsSuccess(specializationsResponseModel));
      },
      failure: (error) {
        emit(
          HomeState.specializationsError(message: error.apiErrorModel.message),
        );
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctor?>? doctorsList =
        _getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  _getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctors;
  }
}
