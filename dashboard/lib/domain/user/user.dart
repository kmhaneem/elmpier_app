import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String phone,
    String? firstName,
    String? lastName,
    String? addressLine1,
    String? addressLine2,
    String? city,
    int? postalCode,
    String? district,
    String? province,
    bool? verified
  }) = _User;
}