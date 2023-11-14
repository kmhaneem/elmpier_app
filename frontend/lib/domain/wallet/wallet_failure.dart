import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet_failure.freezed.dart';

@freezed
abstract class WalletFailure implements _$WalletFailure {
    const factory WalletFailure.unExpected() = _UnExpected;
  const factory WalletFailure.notFound() = _NotFound;
  const factory WalletFailure.serverError() = _ServerError;
}
