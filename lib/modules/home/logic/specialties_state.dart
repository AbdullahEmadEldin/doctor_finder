import 'package:doctor_finder/modules/home/data/models/specialties_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialties_state.freezed.dart';
@freezed
class SpecialtiesState with _$SpecialtiesState {
  const factory SpecialtiesState.initial() = _Initial;

  const factory SpecialtiesState.loading() = SpecialtiesLoading;

  const factory SpecialtiesState.success(SpecialtiesResponseModel data) =
      SpecialtiesSuccess;

  const factory SpecialtiesState.failure({required String message}) =
      SpecialtiesError;
}
