/// handling error details like this as a reaction against the server error response
/// and handling it properly
class ApiErrorModel {
  final int statusCode;
  final String errorMessage;
  final List<Map<String, dynamic>>? errorDetails;
  ApiErrorModel({
    required this.statusCode,
    required this.errorMessage,
    this.errorDetails,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      statusCode: json['code'],
      errorMessage: json['message'],
      errorDetails: json['data'],
    );
  }
}
