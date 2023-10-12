import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mime/mime.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateValueMaxStringLength(
    String input, int maxLength) {
  bool stringLength = input.length > maxLength;
  if (!stringLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}


Either<ValueFailure<int>, int> validateId(int input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidId(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateQuantity(int input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidQuantity(failedvalue: input));
  }
}

Either<ValueFailure<int>, int> validatePrice(int input) {
  int min = 0;
  int max = 1000000;
  bool priceRange = input < min || input > max;
  if (!priceRange) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingPrice(failedValue: input, min: min, max: max));
  }
}

Either<ValueFailure<File>, File> validateImageType(File input) {
  var allowedMimeTypes = {'image/jpeg', 'image/jpg', 'image/png'};

  var mimeType = lookupMimeType(input.path);
  if (allowedMimeTypes.contains(mimeType)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidImageType(failedValue: input));
  }
}

Either<ValueFailure<List<File>>, List<File>> validateMaxImages(
    List<File> input) {
  const maxImages = 6;
  if (input.length <= maxImages) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingImages(failedValue: input, max: maxImages));
  }
}