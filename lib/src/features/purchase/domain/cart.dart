import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_item.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    @Default({}) Set<CartItem> items,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

extension MutableCart on Cart {
  bool isExist(item) {
    return items.contains(item);
  }

  Cart addItem(CartItem item) {
    if (isExist(item)) {
      final existingItem = items.firstWhere((i) => i == item);
      return Cart(
          items: items
              .map((i) => i == item
                  ? existingItem.copyWith(
                      quantity: existingItem.quantity + item.quantity)
                  : i)
              .toSet());
    }
    return Cart(items: {...items, item});
  }

  Cart removeItem(CartItem item) {
    if (isExist(item)) {
      final existingItem = items.firstWhere((i) => i == item);
      if (existingItem.quantity > item.quantity) {
        return Cart(
            items: items
                .map((i) => i == item
                    ? existingItem.copyWith(
                        quantity: existingItem.quantity - item.quantity)
                    : i)
                .toSet());
      } else {
        return Cart(items: items.where((i) => i != item).toSet());
      }
    }
    return Cart(items: items.where((i) => i != item).toSet());
  }
}
