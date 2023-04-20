import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "Id")
  int id = 0;
  @JsonKey(name: "Name")
  String name = "";
  @JsonKey(name: "Email")
  String email = "";
  @JsonKey(name: "Token")
  String token = "";

  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return "(Id: $id, Name: $name, Email: $email, Token: $token)";
  }
}
