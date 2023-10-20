import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  Password._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhone(input));
  }

  PhoneNumber._(this.value);
}

class OtpNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory OtpNumber(int input) {
    return OtpNumber._(validateOtp(input));
  }

  OtpNumber._(this.value);
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String input) {
    return FirstName._(validateName(input));
  }

  FirstName._(this.value);
}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String input) {
    return LastName._(validateName(input));
  }

  LastName._(this.value);
}

// class Salt extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory Salt(String input) {
//     return Salt._();
//   }

//   Salt._(this.value);
// }

// class Profile extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory Profile(String input) {
//     return Profile._();
//   }

//   Profile._(this.value);
// }

// class Verified extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory Verified(String input) {
//     return Verified._();
//   }

//   Verified._(this.value);
// }




//     required String salt,
//     required String firstName,
//     required String lastName,
//     required String profile,