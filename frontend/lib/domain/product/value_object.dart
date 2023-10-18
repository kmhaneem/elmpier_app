import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/core/failures.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';

class UserId extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;
  factory UserId(int input) {
    return UserId._(validateId(input));
  }

  UserId._(this.value);
}

class Name extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;

  factory Name(String input) {
    return Name._(validateValueMaxStringLength(input, maxLength)
        .flatMap((a) => validateStringNotEmpty(a)));
  }
  Name._(this.value);
}

class Description extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 2000;

  factory Description(String input) {
    return Description._(validateValueMaxStringLength(input, maxLength)
        .flatMap((a) => validateStringNotEmpty(a)));
  }

  Description._(this.value);
}

class Category extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory Category(int input) {
    return Category._(validateId(input));
  }

  Category._(this.value);
}

class Brand extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory Brand(int input) {
    return Brand._(validateId(input));
  }

  Brand._(this.value);
}

class Model extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory Model(int input) {
    return Model._(validateId(input));
  }

  Model._(this.value);
}

class Stock extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory Stock(int input) {
    return Stock._(validateStock(input));
  }

  Stock._(this.value);
}

class Price extends ValueObjects<int> {
  final Either<ValueFailure<int>, int> value;

  factory Price(int input) {
    return Price._(validatePrice(input));
  }

  Price._(this.value);
}

class ImageUrl extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;

  factory ImageUrl(String input) {
    return ImageUrl._(
      validateStringNotEmpty(input).flatMap(validateUrl),
    );
  }

  ImageUrl._(this.value);
}


class Image extends ValueObjects<File> {
  final Either<ValueFailure<File>, File> value;

  factory Image(File input) {
    return Image._(validateImageType(input));
  }

  Image._(this.value);
}

class Images extends ValueObjects<List<File>> {
  final Either<ValueFailure<List<File>>, List<File>> value;

  static const maxImages = 6;

  factory Images(List<File> input) {
    return Images._(validateMaxImages(input));
  }

  Images._(this.value);
}



// class ProductImageUrl extends ValueObjects<List<String>> {
//   final Either<ValueFailure<List<String>>, List<String>> value;

//   factory ProductImageUrl(List<String> input){
//     return ProductImageUrl._()
//   }

//   ProductImageUrl._(this.value)
// }