// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResp _$LoginRespFromJson(Map<String, dynamic> json) => LoginResp()
  ..code = json['code'] as int
  ..message = json['message'] as String
  ..user = json['data'] == null
      ? null
      : User.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginRespToJson(LoginResp instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.user,
    };
