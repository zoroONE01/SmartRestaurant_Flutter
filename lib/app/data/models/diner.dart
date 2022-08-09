import 'package:smart_restaurant_flutter/app/data/models/models.dart';
import 'package:json_annotation/json_annotation.dart';
part 'diner.g.dart';

@JsonSerializable()
class Diner extends Models {
  Diner(super.id);

  factory Diner.fromJson(Map<String, dynamic> json) => _$DinerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DinerToJson(this);
}
