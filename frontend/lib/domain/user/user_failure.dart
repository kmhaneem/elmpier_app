import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure implements _$UserFailure {
  const factory UserFailure.unExpected() = _UnExpected;
  const factory UserFailure.notFound() = _NotFound;
  const factory UserFailure.serverError() = _ServerError;
}
