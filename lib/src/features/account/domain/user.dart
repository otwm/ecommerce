import 'package:ecommerce/src/features/account/domain/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? firstName,
    String? lastName,
    String? maidenName,
    int? age,
    required String gender,
    String? email,
    String? phone,
    required String username,
    required String password,
    String? birthDate,
    String? image,
    String? bloodGroup,
    int? height,
    double? weight,
    String? eyeColor,
    String? domain,
    String? ip,
    Address? address,
    String? macAddress,
    String? university,
    String? ein,
    String? ssn,
    String? userAgent,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
