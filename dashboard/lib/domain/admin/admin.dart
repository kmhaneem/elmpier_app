
import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin.freezed.dart';

@freezed
class Admin with _$Admin{
  const factory Admin({
    required int id
  }) = _Admin;
}