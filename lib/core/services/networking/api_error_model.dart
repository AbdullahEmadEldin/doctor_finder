/// handling error details like this as a reaction against the server error response
/// and handling it properly
class ApiErrorModel {
  final int code;
  final String message;
  final String? errorDetails;
  ApiErrorModel({
    required this.code,
    required this.message,
    this.errorDetails,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    /// This is just reflection of API response
    /**  Error Response EX:
     *  {
         "message": "Unprocessable Entity",
         "data": {
             "password": [The password confirmation does not match.]
        }
         "status": false,
         "code": 422
    }
     */
    /// the password key differs according to the error type.
    /// So, we need to extract the value (error Details message) whatever the key.
    String? errMsg;
    Map<String, dynamic>? data = json['data'];
    if (data != null) {
      data.forEach((key, value) {
        if (value is List && value.isNotEmpty) {
          errMsg = value.first;
        } else {
          errMsg = value.toString();
        }
      });
    }
    return ApiErrorModel(
      code: json['code'],
      message: json['message'],
      errorDetails: errMsg,
    );
  }
}
