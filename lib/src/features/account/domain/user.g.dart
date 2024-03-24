// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      maidenName: json['maidenName'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      birthDate: json['birthDate'] as String?,
      image: json['image'] as String?,
      bloodGroup: json['bloodGroup'] as String?,
      height: json['height'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      eyeColor: json['eyeColor'] as String?,
      domain: json['domain'] as String?,
      ip: json['ip'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      macAddress: json['macAddress'] as String?,
      university: json['university'] as String?,
      ein: json['ein'] as String?,
      ssn: json['ssn'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'maidenName': instance.maidenName,
      'age': instance.age,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'username': instance.username,
      'password': instance.password,
      'birthDate': instance.birthDate,
      'image': instance.image,
      'bloodGroup': instance.bloodGroup,
      'height': instance.height,
      'weight': instance.weight,
      'eyeColor': instance.eyeColor,
      'domain': instance.domain,
      'ip': instance.ip,
      'address': instance.address,
      'macAddress': instance.macAddress,
      'university': instance.university,
      'ein': instance.ein,
      'ssn': instance.ssn,
      'userAgent': instance.userAgent,
    };
