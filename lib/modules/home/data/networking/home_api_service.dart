import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/services/networking/api_constants.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specialtiesEP)
  Future<dynamic> getSpecialties();
}
