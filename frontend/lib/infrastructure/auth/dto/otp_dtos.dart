import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/value_objects.dart';
part 'otp_dtos.freezed.dart';

@freezed
class OtpDto with _$OtpDto {
  const factory OtpDto({
    required OtpNumber otp,
  }) = _OtpDto;
}
