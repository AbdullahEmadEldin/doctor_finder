import 'package:json_annotation/json_annotation.dart';

import 'doctor_model.dart';
part 'specialties_response_model.g.dart';
@JsonSerializable()
class SpecialtiesResponseModel {
  @JsonKey(name: 'data')
  final List<DoctorSpecialty?>? data;

  SpecialtiesResponseModel({required this.data});

  factory SpecialtiesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialtiesResponseModelFromJson(json);
}

@JsonSerializable()
class DoctorSpecialty {
  final int? id;
  final String? name;
  @JsonKey(name: 'icon')
  List<Doctor?>? doctors;

  DoctorSpecialty(
      {required this.id, required this.name, required this.doctors});
  factory DoctorSpecialty.fromJson(Map<String, dynamic> json) =>
      _$DoctorSpecialtyFromJson(json);
}

