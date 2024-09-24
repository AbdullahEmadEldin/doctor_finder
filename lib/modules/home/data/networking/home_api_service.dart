import 'package:dio/dio.dart';
import 'package:doctor_finder/modules/home/data/models/specialties_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/services/networking/api_constants.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specialtiesEP)
  Future<SpecialtiesResponseModel> getSpecialties();
}
