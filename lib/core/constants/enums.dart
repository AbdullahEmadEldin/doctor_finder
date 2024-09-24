// ignore_for_file: constant_identifier_names

import 'package:doctor_finder/core/constants/image_assets.dart';

enum Gender {
  male(),
  female(),
}

enum DoctorSpecialtyEnum {
  Cardiology(ImageAssets.cardio),
  Dermatology(ImageAssets.dermatology),
  Neurology(ImageAssets.nuero),
  Orthopedics(ImageAssets.orthopedic),
  Pediatrics(ImageAssets.pedo),
  Gynecology(ImageAssets.gynecology),
  Ophthalmology(ImageAssets.opthalmo),
  Urology(ImageAssets.urology),
  Gastroenterology(ImageAssets.gastro),
  Psychiatry(ImageAssets.phsyco);

  final String icon;
  const DoctorSpecialtyEnum(this.icon);
}
