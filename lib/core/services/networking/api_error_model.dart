/// handling error details like this as a reaction against the server error response
/// and handling it properly
class ApiErrorModel {
  final int code;
  final String message;
  ApiErrorModel({
    required this.code,
    required this.message,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      code: json['code'],
      message: json['message'],
    );
  }
}
