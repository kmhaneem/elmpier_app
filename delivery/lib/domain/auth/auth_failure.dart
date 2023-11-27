import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.unExpected() = _UnExpected;
  const factory AuthFailure.notFound() = _NotFound;
  const factory AuthFailure.serverError() = _ServerError;
}