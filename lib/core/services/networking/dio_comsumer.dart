import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constants/constants.dart';
import '../cache/cache_helper.dart';

/// This class' function to initialize single instance of dio
/// and make it's configuration.
class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addDioHeader();
      return _dio!;
    } else {
      return _dio!;
    }
  }

/// Dio instance is initialized before saving token into header
/// So, we need to set token into header after login 
/// by invoking this function in loginCubit after successful login.
  static void setTokenIntoHeaderAfterLogin(String token) {
    _dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor() {
    _dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void addDioHeader() async {
    _dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await CacheHelper.getData(key: SharedPrefKeys.token)}',
    };
  }
}
