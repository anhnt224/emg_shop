// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address()
  ..lng = (json['lat'] as num).toDouble()
  ..lat = (json['lng'] as num).toDouble()
  ..addressName = json['address'] as String;

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'lat': instance.lng,
      'lng': instance.lat,
      'address': instance.addressName,
    };
