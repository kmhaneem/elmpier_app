
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required int userId,
    required String paymentMethod,
    required String status,
    required String paymentId,
    String? username
  }) = _Transaction;
}


