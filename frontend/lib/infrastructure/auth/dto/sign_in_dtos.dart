import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/value_objects.dart';
part 'sign_in_dtos.freezed.dart';

@freezed
class SignInDto with _$SignInDto {
  const factory SignInDto({
    required EmailAddress email,
    required Password password,
  }) = _SignInDto;
}
