import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: "lat")
  double lng = 0.0;
  @JsonKey(name: "lng")
  double lat = 0.0;
  @JsonKey(name: "address")
  String addressName = "";

  Address();
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
