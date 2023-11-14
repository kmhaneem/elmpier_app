
import 'package:freezed_annotation/freezed_annotation.dart';
part 'plus_user.freezed.dart';

@freezed
class PlusUser with _$PlusUser {
  const factory PlusUser({
    required bool isPlusUser
  }) = _PlusUser;
}