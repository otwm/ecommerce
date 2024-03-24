import 'package:ecommerce/src/features/purchase/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();

  factory CartItem({
    required Product product,
    required int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

  @override
  bool operator ==(other) => other is CartItem && other.product == product;

  @override
  int get hashCode => Object.hash(runtimeType, product);
}
