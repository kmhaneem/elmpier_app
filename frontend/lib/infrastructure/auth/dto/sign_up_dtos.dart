import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/value_objects.dart';
part 'sign_up_dtos.freezed.dart';

@freezed
class SignUpDto with _$SignUpDto {
  const factory SignUpDto({
    required EmailAddress email,
    required PhoneNumber phone,
    required Password password,
  }) = _SignUpDto;
}
