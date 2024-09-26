import 'package:doctor_finder/core/services/networking/api_result.dart';
import 'package:doctor_finder/core/services/networking/api_error_handler.dart';
import 'package:doctor_finder/modules/home/data/models/specialties_response_model.dart';
import 'package:doctor_finder/modules/home/data/networking/home_api_service.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
// 123@Abdullah
  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecialtiesResponseModel>> getSpecialties() async {
    try {
      final res = await _homeApiService.getSpecialties();
      return ApiResult.success(res);
    } catch (error) {
      print('====>>>>>>>>>>> REPO Faiiiiiiiilure');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
