import 'package:doctor_finder/core/services/networking/api_result.dart';
import 'package:doctor_finder/core/services/networking/exceptions.dart';
import 'package:doctor_finder/modules/home/data/models/specialties_response_model.dart';
import 'package:doctor_finder/modules/home/data/networking/home_api_service.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecialtiesResponseModel>> getSpecialties() async {
    try {
      _homeApiService.getSpecialties();
      return ApiResult.success(await _homeApiService.getSpecialties());
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
