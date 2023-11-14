import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/transaction/transaction.dart';
import 'package:dashboard/domain/transaction/transaction_failure.dart';

abstract class ITransactionRepository {
  Future<Either<TransactionFailure, List<Transaction>>> getAllTransaction();
}
