import 'package:ecommerce/src/features/account/domain/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  @Assert('(age ?? 1) >= 1', 'age must be greater than or equal to 1')
  const factory User({
    int? id,
    String? firstName,
    String? lastName,
    int? age,
    String? gender,
    String? email,
    String? phone,
    required String username,
    String? birthDate,
    String? image,
    Address? address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  bool operator ==(other) => other is User && other.id == id;

  @override
  int get hashCode => Object.hash(runtimeType, id);
}
