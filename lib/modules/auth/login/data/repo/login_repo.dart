import 'package:doctor_finder/core/services/networking/api_consumer.dart';
import 'package:doctor_finder/core/services/networking/api_result.dart';
import 'package:doctor_finder/core/services/networking/exceptions.dart';
import 'package:doctor_finder/modules/auth/login/data/models/login_response.dart';

import '../models/login_request_body.dart';

class LoginRepo {
  final ApiConsumer _apiConsumer;

  LoginRepo(this._apiConsumer);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final res = await _apiConsumer.login(body);
      return ApiResult.success(res);
    } catch (e) {
      return ApiResult.failure( ErrorHandler.handle(e));
    }
  }
}
