import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  // if the attribute name is different from the json key
  // you should annotate it with the same name from response
  @JsonKey(name: 'data')
  UserData? data;
  bool? status;
  int? code;

  LoginResponse({this.message, this.data, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? name;

  UserData({this.token, this.name});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
