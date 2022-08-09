// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      json['id'] as int?,
    )
      ..name = json['name'] as String?
      ..phone = json['phone'] as String?
      ..diners = (json['diners'] as List<dynamic>?)
          ?.map((e) => Diner.fromJson(e as Map<String, dynamic>))
          .toList()
      ..emps = (json['emps'] as List<dynamic>?)
          ?.map((e) => Diner.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'diners': instance.diners?.map((e) =>   e.toJson()).toList(),
      'emps': instance.emps?.map((e) => e.toJson()).toList(),
    };
