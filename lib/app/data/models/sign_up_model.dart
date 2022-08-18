import 'package:json_annotation/json_annotation.dart';

import 'base_model.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel extends BaseModel {
  String name;
  String phone;
  int gender;
  String username;
  String password;

  SignUpModel(this.name, this.phone, this.gender, this.username, this.password);

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
