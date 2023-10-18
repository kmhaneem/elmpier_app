// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category_id'] as int,
      brand: json['brand_id'] as int,
      model: json['model_id'] as int,
      stock: json['stock_unit'] as int,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: json['price'] as int,
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'category_id': instance.category,
      'brand_id': instance.brand,
      'model_id': instance.model,
      'stock_unit': instance.stock,
      'image_urls': instance.imageUrls,
      'price': instance.price,
    };
