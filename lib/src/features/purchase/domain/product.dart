import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    /// id
    int? id,

    /// title
    required String title,

    /// 설명
    String? description,

    /// 가격
    required int price,

    /// 할인율
    int? discountPercentage,

    /// rating
    double? rating,

    /// stock
    int? stock,

    /// brand
    String? brand,

    /// category
    required String category,

    /// thumbnail
    String? thumbnail,

    /// 이미지
    List<String>? images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
