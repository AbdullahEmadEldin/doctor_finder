import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';

/// the login response is the same for signUp but we need to annotate them differently
/// to ease any editing from backend in the future. 
@JsonSerializable()
class SignUpResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  SignUpResponse({this.message, this.userData, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}