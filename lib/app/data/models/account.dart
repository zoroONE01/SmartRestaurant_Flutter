import 'package:json_annotation/json_annotation.dart';
import 'package:smart_restaurant_flutter/app/data/models/models.dart';

import 'diner.dart';

part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account extends Models {
  String? username;
  String? password;
  List<Diner>? diners;
  List<Diner>? emps;

  Account(super.id);

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
