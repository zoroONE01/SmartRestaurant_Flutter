// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      json['id'] as int?,
    )
      ..username = json['username'] as String?
      ..password = json['password'] as String?
      ..diners = (json['diners'] as List<dynamic>?)
          ?.map((e) => Diner.fromJson(e as Map<String, dynamic>))
          .toList()
      ..emps = (json['emps'] as List<dynamic>?)
          ?.map((e) => Diner.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'diners': instance.diners?.map((e) => e.toJson()).toList(),
      'emps': instance.emps?.map((e) => e.toJson()).toList(),
    };
