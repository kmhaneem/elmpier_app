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
}

class ProductBrand extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductBrand(int input) {
    return ProductBrand._(validateId(input));
  }

  ProductBrand._(this.value);
}

class ProductModel extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory ProductModel(int input) {
    return ProductModel._(validateId(input));
  }

  ProductModel._(this.value);
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
