import 'package:doctor_finder/core/services/networking/api_error_model.dart';
import 'package:doctor_finder/modules/home/data/models/specialties_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/doctor_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecialtiesLoading;

  const factory HomeState.specializationsSuccess(
      SpecialtiesResponseModel data) = SpecialtiesSuccess;

  const factory HomeState.specializationsError({required String message}) =
      SpecialtiesError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctor?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError(ApiErrorModel errorModel) =
      DoctorsError;
}
