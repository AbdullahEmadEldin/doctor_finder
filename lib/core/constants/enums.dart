import 'package:doctor_finder/core/constants/image_assets.dart';

enum Gender {
  male(),
  female(),
}

enum DoctorSpecialty {
  general(ImageAssets.general),
  urology(ImageAssets.urology),
  cardio(ImageAssets.cardio),
  dent(ImageAssets.dent),
  ent(ImageAssets.ent),
  hepato(ImageAssets.hepato),
  histo(ImageAssets.histo),
  intestine(ImageAssets.intestine),
  nuero(ImageAssets.nuero),
  opthalmo(ImageAssets.opthalmo),
  pedo(ImageAssets.pedo),
  pulmonary(ImageAssets.pulmonary);

  final String icon;
  const DoctorSpecialty(this.icon);
}
