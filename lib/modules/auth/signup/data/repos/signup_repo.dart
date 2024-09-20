import 'package:doctor_finder/core/services/networking/api_result.dart';
import 'package:doctor_finder/core/services/networking/exceptions.dart';
import 'package:doctor_finder/modules/auth/signup/data/model/signup_response.dart';

import '../../../../../core/services/networking/api_consumer.dart';
import '../model/signup_request_body.dart';

class SignupRepo {
  final ApiConsumer _apiConsumer;
  SignupRepo(this._apiConsumer);

  Future<ApiResult<SignUpResponse>> signUp(SignUpRequestBody body) async {
    try {
      final res = await _apiConsumer.signUp(body);
      return ApiResult.success(res);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
