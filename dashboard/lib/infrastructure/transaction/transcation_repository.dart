import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/transaction/i_transaction_repository.dart';
import 'package:dashboard/domain/transaction/transaction.dart';
import 'package:dashboard/domain/transaction/transaction_failure.dart';
import 'package:dashboard/infrastructure/transaction/dto/transaction_dtos.dart';
import 'package:dio/dio.dart';

import '../auth/secure_storage/secure_storage_service.dart';

class TransactionRepository extends ITransactionRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  TransactionRepository(this._dio);
  @override
  Future<Either<TransactionFailure, List<Transaction>>>
      getAllTransaction() async {
    try {
      final response = await _dio.get(
        "$api/admin/transaction",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        final transactionDto = (response.data['response'] as List)
            .map((json) => TransactionDto.fromJson(json));
        final transaction = transactionDto.map((dto) => dto.toDomain()).toList();
        return right(transaction);
      } else {
        return left(const TransactionFailure.serverError());
      }
    } catch (error) {
      return left(const TransactionFailure.serverError());
    }
  }
}
