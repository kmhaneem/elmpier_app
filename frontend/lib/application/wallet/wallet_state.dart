import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/elmpier_plus/elmpier_plus_error.dart';
import 'package:frontend/domain/elmpier_plus/model/plus_user.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
import 'package:frontend/domain/wallet/wallet_failure.dart';
part 'wallet_state.freezed.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.actionInProgress() = _ActionInProgress;
  const factory WalletState.actionFailure(WalletFailure walletFailure) = _ActionFailure;
  const factory WalletState.walletLoaded(Wallet wallet) = _WalletLoaded;
  const factory WalletState.walletAmountAdded() = _WalledAmountAdded;
}
