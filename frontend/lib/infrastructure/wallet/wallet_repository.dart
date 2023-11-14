import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/domain/wallet/i_wallet_repository.dart';
import 'package:frontend/domain/wallet/wallet_failure.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
import 'package:frontend/infrastructure/core/api.dart';
import 'package:frontend/infrastructure/wallet/dto/wallet_dtos.dart';

import '../../domain/orders/model/orders.dart';
import '../../shared/providers.dart';

class WalletRepository implements IWalletRepository {
  final Dio _dio;
  WalletRepository(this._dio);
  @override
  Future<Either<WalletFailure, Wallet>> getWalletAmount() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/wallet/amount",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final walletDto = WalletDto.fromJson(response.data['response'][0]);
        final wallet = walletDto.toDomain();
        return right(wallet);
      } else {
        return left(const WalletFailure.serverError());
      }
    } catch (error) {
      return left(const WalletFailure.serverError());
    }
  }

  @override
  Future<Either<WalletFailure, Unit>> addWalletAmount(
      Orders orders, Wallet wallet) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api2/wallet/add",
        data: {
          "amount": wallet.amount,
          "paymentMethod": orders.paymentMethod,
          "status": orders.status,
          "paymentId": orders.paymentId,
        },
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const WalletFailure.serverError());
      }
    } catch (error) {
      return left(const WalletFailure.serverError());
    }
  }
}
