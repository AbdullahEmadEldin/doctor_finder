// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialties_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialtiesResponseModel _$SpecialtiesResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecialtiesResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => DoctorSpecialty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecialtiesResponseModelToJson(
        SpecialtiesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DoctorSpecialty _$DoctorSpecialtyFromJson(Map<String, dynamic> json) =>
    DoctorSpecialty(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      doctors: (json['icon'] as List<dynamic>)
          .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorSpecialtyToJson(DoctorSpecialty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.doctors,
    };
