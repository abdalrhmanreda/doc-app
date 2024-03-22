import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  final String? message;
  @JsonKey(name: 'data')
  final UserData userData;
  final String? status;
  final int? code;

  LoginResponseBody(this.message, this.userData, this.status, this.code);
  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? username;
  final String? token;

  UserData(this.username, this.token);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
