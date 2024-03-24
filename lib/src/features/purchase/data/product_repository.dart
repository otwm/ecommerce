import 'package:dio/dio.dart';
import 'package:ecommerce/src/constants/envirment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/product.dart';

abstract class ProductRepository {
  Future<List<Product>> listProducts(String? search);
  Future<List<Product>> listCategoryProducts(String category);
  Future<Product> getProduct(int id);
  Future<List<String>> listProductCategories();
}

class DioProductRepository implements ProductRepository {
  final Dio _dio;

  DioProductRepository(this._dio) : super() {
    _dio.options.baseUrl = Environment.productApi;
    _dio.interceptors
        .add(LogInterceptor(responseBody: Environment.env == 'dev'));
  }

  @override
  Future<List<Product>> listProducts(String? search) async {
    final response = await _dio.get('/products');
    final List<dynamic> jsonList = response.data;
    return jsonList.map((json) => Product.fromJson(json)).toList();
  }

  @override
  Future<List<String>> listProductCategories() async {
    final response = await _dio.get('/products/categories');
    final List<dynamic> jsonList = response.data;
    return jsonList.cast<String>();
  }

  @override
  Future<List<Product>> listCategoryProducts(String category) async {
    final response = await _dio.get('/products/category/$category');
    final List<dynamic> jsonList = response.data;
    return jsonList.map((json) => Product.fromJson(json)).toList();
  }

  @override
  Future<Product> getProduct(int id) async {
    final response = await _dio.get('/products/$id');
    return Product.fromJson(response.data);
  }
}

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final dio = Dio();
  return DioProductRepository(dio);
});
