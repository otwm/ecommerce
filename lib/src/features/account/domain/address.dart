import 'package:ecommerce/src/features/account/domain/coordinates.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    String? address,
    String? city,
    required Coordinates coordinates,
    required String postalCode,
    required String state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
