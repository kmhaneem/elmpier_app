import 'package:delivery/domain/auth/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../sign_in_state.freezed.dart';


@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loadInProgress() = _LoadInProgress;
  const factory SignInState.success() =
      _LoadSuccess;
  const factory SignInState.failure(AuthFailure failure) =
      _Failure;
}
