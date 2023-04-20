import 'package:emg_shop/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_resp.g.dart';

@JsonSerializable()
class LoginResp {
  @JsonKey(name: "code")
  int code = 0;
  @JsonKey(name: "message")
  String message = "";
  @JsonKey(name: "data")
  User? user; //nullable

  LoginResp();

  factory LoginResp.fromJson(Map<String, dynamic> json) =>
      _$LoginRespFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRespToJson(this);
}
