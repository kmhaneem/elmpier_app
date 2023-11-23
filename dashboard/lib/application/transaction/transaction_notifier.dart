import 'package:dartz/dartz.dart';
import 'package:dashboard/application/transaction/transaction_state.dart';
import 'package:dashboard/domain/transaction/i_transaction_repository.dart';
import 'package:dashboard/domain/transaction/transaction.dart';
import 'package:dashboard/domain/transaction/transaction_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionNotifier extends StateNotifier<TransactionState> {
  final ITransactionRepository _iTransactionRepository;
  TransactionNotifier(this._iTransactionRepository)
      : super(const TransactionState.initial()) {
    getAllTransaction();
  }

  Future<void> getAllTransaction() async {
    Either<TransactionFailure, List<Transaction>> transactionOrFailure;
    state = const TransactionState.actionInProgress();

    transactionOrFailure = await _iTransactionRepository.getAllTransaction();

    state = transactionOrFailure.fold(
      (failure) => TransactionState.actionFailure(failure),
      (transaction) => TransactionState.loaded(transaction),
    );
  }
}
