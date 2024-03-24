import 'dart:developer';

import 'package:ecommerce/src/features/purchase/data/product_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final container = ProviderContainer();
  test('상품 조회', () async {
    final product =
        await container.read(productRepositoryProvider).getProduct(1);
    log(product.title);
  });

  test('카테고리 조회', () async {
    await container.read(productRepositoryProvider).listProductCategories();
  });
}
