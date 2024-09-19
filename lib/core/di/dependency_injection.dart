import 'package:dio/dio.dart';
import 'package:doctor_finder/core/services/networking/api_consumer.dart';
import 'package:doctor_finder/core/services/networking/dio_comsumer.dart';
import 'package:doctor_finder/modules/auth/login/data/repo/login_repo.dart';
import 'package:doctor_finder/modules/auth/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpGetIt() {
  // Networking instances
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiConsumer>(() => ApiConsumer(dio));
  // repo
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // login cubit
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
