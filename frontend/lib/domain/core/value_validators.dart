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

Either<ValueFailure<String>, String> validateUrl(String input) {
  final urlPattern =
      r'^http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+$';
  final urlRegex = RegExp(urlPattern);
  if (urlRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUrl(failedValue: input));
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

Either<ValueFailure<int>, int> validateStock(int input) {
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

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // print("validatePassword called with input: $input");
  // print(input.length);
  // print(input.length >= 5);
  if (input.length >= 5) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  const phoneRegEx = r'^(?:7|0|(?:\+94))[0-9]{8,9}$';
  if (RegExp(phoneRegEx).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateOtp(int input) {
  // print(input.toString().length == 6);
  if (input.toString().length == 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidOtp(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  final nameRegex = RegExp(r'^[a-zA-Z]+$');
  if (nameRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}