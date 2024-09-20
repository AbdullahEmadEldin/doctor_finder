import 'package:dio/dio.dart';
import 'package:doctor_finder/core/services/networking/api_consumer.dart';
import 'package:doctor_finder/core/services/networking/dio_comsumer.dart';
import 'package:doctor_finder/modules/auth/login/data/repo/login_repo.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../modules/auth/signup/data/repos/signup_repo.dart';
import '../../modules/auth/signup/logic/cubit/signup_cubit.dart';

final getIt = GetIt.instance;

void setUpGetIt() {
  // Networking instances
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiConsumer>(() => ApiConsumer(dio));
  // login cubit & repo
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // Sign up cubit & repo
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
