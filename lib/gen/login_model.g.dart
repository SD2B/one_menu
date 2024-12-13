// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['fname'] as String?,
      lastName: json['lname'] as String?,
      userName: json['username'] as String?,
      email: json['email'] as String?,
      profilePic: json['profile_pic'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'fname': instance.firstName,
      'lname': instance.lastName,
      'username': instance.userName,
      'email': instance.email,
      'profile_pic': instance.profilePic,
    };

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      message: json['message'] as String?,
      responseCode: (json['response_code'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'response_code': instance.responseCode,
      'user': instance.user,
    };
