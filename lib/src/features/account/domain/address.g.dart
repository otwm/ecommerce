// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      address: json['address'] as String?,
      city: json['city'] as String?,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      postalCode: json['postalCode'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'coordinates': instance.coordinates,
      'postalCode': instance.postalCode,
      'state': instance.state,
    };
