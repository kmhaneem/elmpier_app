import 'package:dartz/dartz.dart';
import 'package:frontend/domain/cart/model/cart.dart';
import 'package:frontend/domain/orders/model/orders.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
import 'package:frontend/domain/wallet/wallet_failure.dart';

abstract class IWalletRepository {
  Future<Either<WalletFailure, Wallet>> getWalletAmount();
  Future<Either<WalletFailure, Unit>> addWalletAmount(Orders orders ,Wallet wallet);
}
