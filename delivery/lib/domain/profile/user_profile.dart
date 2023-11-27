
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String name,
    required String email,
    required String province,
    required String district
  }) = _UserProfile;
}

