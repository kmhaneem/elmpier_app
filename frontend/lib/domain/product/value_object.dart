import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/core/failures.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';

class ProductName extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;

  factory ProductName(String input) {
    return ProductName._(validateValueMaxStringLength(input, maxLength)
        .flatMap((a) => validateStringNotEmpty(a)));
  }
  ProductName._(this.value);
}

class ProductDescription extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 2000;

  factory ProductDescription(String input) {
    return ProductDescription._(validateValueMaxStringLength(input, maxLength)
        .flatMap((a) => validateStringNotEmpty(a)));
  }

  ProductDescription._(this.value);
}

class ProductCategory extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductCategory(int input) {
    return ProductCategory._(validateId(input));
  }

  ProductCategory._(this.value);
  factory ProductCategory.empty() => ProductCategory(-1);
}

class ProductBrand extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductBrand(int input) {
    return ProductBrand._(validateId(input));
  }

  ProductBrand._(this.value);
  factory ProductBrand.empty() => ProductBrand(-1);
}

class ProductModel extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductModel(int input) {
    return ProductModel._(validateId(input));
  }

  ProductModel._(this.value);
  factory ProductModel.empty() => ProductModel(-1);
}

class ProductQuantity extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductQuantity(int input) {
    return ProductQuantity._(validateQuantity(input));
  }

  ProductQuantity._(this.value);
}

class ProductPrice extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductPrice(int input) {
    return ProductPrice._(validatePrice(input));
  }

  ProductPrice._(this.value);
}

class ProductImage extends ValueObjects<File> {
  final Either<ValueFailure<File>, File> value;

  factory ProductImage(File input) {
    return ProductImage._(validateImageType(input));
  }

  ProductImage._(this.value);
}

class ProductImages extends ValueObjects<List<File>> {
  final Either<ValueFailure<List<File>>, List<File>> value;

  static const maxImages = 6;

  factory ProductImages(List<File> input) {
    return ProductImages._(validateMaxImages(input));
  }

  ProductImages._(this.value);
}

// class ProductImageUrl extends ValueObjects<List<String>> {
//   final Either<ValueFailure<List<String>>, List<String>> value;

//   factory ProductImageUrl(List<String> input){
//     return ProductImageUrl._()
//   }

//   ProductImageUrl._(this.value)
// }