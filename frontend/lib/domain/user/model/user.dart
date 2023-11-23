import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel(
      {required String email,
      required String phone,
      required String firstName,
      required String lastName,
      required String addressLine1,
      required String addressLine2,
      required String city,
      required String postalCode,
      String? district,
      String? province,
      int? districtId,
      int? provinceId}) = _UserModel;
}
