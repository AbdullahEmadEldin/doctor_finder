import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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

  static void addDioHeader() {
    _dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization' : 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzI3MTAzNjY2LCJleHAiOjE3MjcxOTAwNjYsIm5iZiI6MTcyNzEwMzY2NiwianRpIjoiTGpQUTlGZ3NhWVJSam41MSIsInN1YiI6IjIyNTciLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.hzrWFgC1P5lRRSqXhUL7yf8exMDedbOF1IhPloBjr94'
    };
  }
}
