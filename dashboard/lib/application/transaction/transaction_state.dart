import 'package:dashboard/domain/transaction/transaction_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/transaction/transaction.dart';
import '../../domain/user/user.dart';
import '../../domain/user/user_failure.dart';
part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.actionInProgress() = _ActionInProgress;
  const factory TransactionState.loaded(List<Transaction> user) = _Loaded;
  const factory TransactionState.actionFailure(TransactionFailure userFailure) =
      _ActionFailure;
}
