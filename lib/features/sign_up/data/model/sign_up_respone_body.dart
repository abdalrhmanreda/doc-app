import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_respone_body.g.dart';

@JsonSerializable()
class SignUpResponeBody {
  final String? message;
  @JsonKey(name: 'data')
  final UserData userData;
  final String? status;
  final int? code;

  SignUpResponeBody(this.message, this.userData, this.status, this.code);
  factory SignUpResponeBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponeBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? username;
  final String? token;

  UserData(this.username, this.token);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
