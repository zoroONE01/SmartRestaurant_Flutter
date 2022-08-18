import 'package:json_annotation/json_annotation.dart';

import 'base_model.dart';

part 'sign_in_model.g.dart';

@JsonSerializable()
class SignInModel extends BaseModel {
  String username;
  String password;

  // @JsonKey(ignore: true)
  // bool isRememberMe;

  SignInModel(this.username, this.password);

  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignInModelToJson(this);
}
