import 'package:dashboard/application/transaction/transaction_state.dart';
import 'package:dashboard/domain/transaction/i_transaction_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionNotifier extends StateNotifier<TransactionState> {
  final ITransactionRepository _iTransactionRepository;
  TransactionNotifier(this._iTransactionRepository)
      : super(const TransactionState.initial());

  Future<void> getAllTransaction() async {
    state = const TransactionState.actionInProgress();

    final transactionOrFailure =
        await _iTransactionRepository.getAllTransaction();

    state = transactionOrFailure.fold(
      (failure) => TransactionState.actionFailure(failure),
      (transaction) => TransactionState.loaded(transaction),
    );
  }
}
