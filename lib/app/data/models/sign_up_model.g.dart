// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      json['name'] as String,
      json['phone'] as String,
      json['gender'] as int,
      json['username'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'username': instance.username,
      'password': instance.password,
    };
