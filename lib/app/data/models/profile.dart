import 'package:json_annotation/json_annotation.dart';
import 'package:smart_restaurant_flutter/app/data/models/models.dart';

import 'diner.dart';

part 'profile.g.dart';

enum Gender { male, female, other }

@JsonSerializable(explicitToJson: true)
class Profile extends Models {
  String? name;
  String? phone;
  int? _gender;
  List<Diner>? diners;
  List<Diner>? emps;

  static final genders = {
    Gender.male: 1,
    Gender.female: 0,
    Gender.other: 2,
  };

  Profile(super.id);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  int get gender1 => _gender ?? 1;

  set gender(Gender value) {
    _gender = genders[value];
  }
}
