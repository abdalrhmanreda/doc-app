// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_respone_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponeBody _$SignUpResponeBodyFromJson(Map<String, dynamic> json) =>
    SignUpResponeBody(
      json['message'] as String?,
      UserData.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as String?,
      json['code'] as int?,
    );

Map<String, dynamic> _$SignUpResponeBodyToJson(SignUpResponeBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      json['username'] as String?,
      json['token'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'username': instance.username,
      'token': instance.token,
    };
