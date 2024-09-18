import 'package:dio/dio.dart';
import 'package:doctor_finder/core/services/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../../modules/auth/login/data/models/login_request_body.dart';
import '../../../modules/auth/login/data/models/login_response.dart';

part 'api_consumer.g.dart';

/// This will be the interface for api service to ease switching between any api package
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiConsumer {
  factory ApiConsumer(Dio dio, {String baseUrl}) = _ApiConsumer;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody body,
  );
}
