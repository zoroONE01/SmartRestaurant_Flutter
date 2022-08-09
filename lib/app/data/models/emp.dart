import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'emp.g.dart';

@JsonSerializable()
class Emp extends Models {
  Emp(super.id);

  factory Emp.fromJson(Map<String, dynamic> json) => _$EmpFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EmpToJson(this);
}
