import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/wallet/wallet_state.dart';
import 'package:frontend/domain/orders/model/orders.dart';
import 'package:frontend/domain/wallet/i_wallet_repository.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
import 'package:frontend/domain/wallet/wallet_failure.dart';

class WalletNotifier extends StateNotifier<WalletState> {
  final IWalletRepository _iWalletRepository;
  WalletNotifier(this._iWalletRepository) : super(const WalletState.initial()) {
    getWalletAmount();
  }

  Future<void> getWalletAmount() async {
    Either<WalletFailure, Wallet> failureOrWalletAmount;
    state = const WalletState.actionInProgress();

    failureOrWalletAmount = await _iWalletRepository.getWalletAmount();

    state = failureOrWalletAmount.fold(
      (l) => WalletState.actionFailure(l),
      (r) => WalletState.walletLoaded(r),
    );
  }

  Future<void> addWalletAmount(Orders orders, Wallet wallet) async {
    Either<WalletFailure, Unit> failureOrWalletAmount;

    failureOrWalletAmount = await _iWalletRepository.addWalletAmount(orders, wallet);

    state = failureOrWalletAmount.fold(
      (l) => WalletState.actionFailure(l),
      (r) => const WalletState.walletAmountAdded(),
    );
  }
}
