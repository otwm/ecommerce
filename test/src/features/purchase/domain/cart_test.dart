import 'package:ecommerce/src/features/purchase/domain/cart.dart';
import 'package:ecommerce/src/features/purchase/domain/cart_item.dart';
import 'package:ecommerce/src/features/purchase/domain/product.dart';
import 'package:flutter_test/flutter_test.dart';

final iphone9 = Product.fromJson({
  "id": 1,
  "title": "iPhone 9",
  "description": "An apple mobile which is nothing like apple",
  "price": 549,
  "discountPercentage": 12.96,
  "rating": 4.69,
  "stock": 94,
  "brand": "Apple",
  "category": "smartphones",
  "thumbnail": "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg",
  "images": [
    "https://cdn.dummyjson.com/product-images/1/1.jpg",
    "https://cdn.dummyjson.com/product-images/1/2.jpg",
    "https://cdn.dummyjson.com/product-images/1/3.jpg",
    "https://cdn.dummyjson.com/product-images/1/4.jpg",
    "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"
  ]
});

final iphoneX = Product.fromJson({
  "id": 2,
  "title": "iPhone X",
  "description":
      "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
  "price": 899,
  "discountPercentage": 17.94,
  "rating": 4.44,
  "stock": 34,
  "brand": "Apple",
  "category": "smartphones",
  "thumbnail": "https://cdn.dummyjson.com/product-images/2/thumbnail.jpg",
  "images": [
    "https://cdn.dummyjson.com/product-images/2/1.jpg",
    "https://cdn.dummyjson.com/product-images/2/2.jpg",
    "https://cdn.dummyjson.com/product-images/2/3.jpg",
    "https://cdn.dummyjson.com/product-images/2/thumbnail.jpg"
  ]
});

void main() {
  test('사용자는 카트에 상품을 담을 수 있다.', () {
    final cart = Cart().addItem(CartItem(product: iphone9, quantity: 1));
    expect(cart.items.length, 1);
    expect(cart.items.first.product.id, 1);
  });

  test('사용자는 카트에 중복된 상품을 담게 되면 동일 상품의 카운트만 증가한다.', () {
    final cart = Cart().addItem(CartItem(product: iphone9, quantity: 1));
    final updatedCart = cart.addItem(CartItem(product: iphone9, quantity: 1));
    expect(updatedCart.items.length, 1);
    expect(updatedCart.items.first.quantity, 2);
  });

  test('사용자는 카트에서 상품을 뺄 수 있다.', () {
    final cart = Cart().addItem(CartItem(product: iphone9, quantity: 2));
    final updatedCart =
        cart.removeItem(CartItem(product: iphone9, quantity: 1));
    expect(updatedCart.items.length, 1);
  });

  test('카트에서 중복 상품이 제거되어 해당 상품이 없다면 전체 상품에서 해당 상품이 없어진다.', () {
    final cart = Cart().addItem(CartItem(product: iphone9, quantity: 2));
    final updatedCart =
        cart.removeItem(CartItem(product: iphone9, quantity: 2));
    expect(updatedCart.items.length, 0);
  });

  test('카트에서 보유 중인 상품 보다 초과 하여 상품을 제거 하여도 상품 목록이 없어지기만 한다.', () {
    final cart = Cart().addItem(CartItem(product: iphone9, quantity: 2));
    final updatedCart =
        cart.removeItem(CartItem(product: iphone9, quantity: 3));
    expect(updatedCart.items.length, 0);
  });

  test('카트에 없는 목록을 제거하면 아무런 변화가 없다.', () {
    final cart = Cart().addItem(CartItem(product: iphone9, quantity: 2));
    final updatedCart =
        cart.removeItem(CartItem(product: iphoneX, quantity: 3));
    expect(cart == updatedCart, true);
  });
}
