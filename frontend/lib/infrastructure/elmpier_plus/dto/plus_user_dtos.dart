import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/elmpier_plus/model/plus_user.dart';
part 'plus_user_dtos.freezed.dart';
part 'plus_user_dtos.g.dart';

@freezed
class PlusUserDto with _$PlusUserDto {
  const PlusUserDto._();

  const factory PlusUserDto({
    @JsonKey(name: "is_plus_user") required bool isPlusUser,
  }) = _PlusUserDto;

  factory PlusUserDto.fromJson(Map<String, dynamic> json) =>
      _$PlusUserDtoFromJson(json);

  factory PlusUserDto.fromDomain(PlusUser plusUser) {
    return PlusUserDto(
      isPlusUser: plusUser.isPlusUser,
    );
  }

  PlusUser toDomain() {
    return PlusUser(
      isPlusUser: isPlusUser,
    );
  }
}
