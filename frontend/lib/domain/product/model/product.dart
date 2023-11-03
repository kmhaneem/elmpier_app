import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/product/value_object.dart';
part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    required int id, 
    required Name name,
    required Description description,
    required Category category,
    required Brand brand,
    required Model model,
    required Stock stock,
    required Price price,
    required List<String> imageUrls,
  }) = _Product;

  factory Product.empty() => Product(
        id: 0,
        name: Name(""),
        description: Description(""),
        category: Category(0),
        brand: Brand(0),
        model: Model(0),
        stock: Stock(0),
        price: Price(0),
        imageUrls: [],
      );

  fold(String Function(dynamic l) param0, Function(dynamic r) param1) {}
}
