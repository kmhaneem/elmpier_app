import 'package:dashboard/domain/transaction/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_dtos.freezed.dart';
part 'transaction_dtos.g.dart';

@freezed
class TransactionDto with _$TransactionDto {
  const TransactionDto._();

  const factory TransactionDto({
    required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "payment_method") required String paymentMethod,
    required String status,
    @JsonKey(name: "payment_id") required String paymentId,
    String? username
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);

  factory TransactionDto.fromDomain(Transaction transaction) {
    return TransactionDto(
      id: transaction.id,
      userId: transaction.userId,
      paymentMethod: transaction.paymentMethod,
      status: transaction.status,
      paymentId: transaction.paymentId,
      username: transaction.username
    );
  }

  Transaction toDomain() {
    return Transaction(
      id: id,
      userId: userId,
      paymentMethod: paymentMethod,
      status: status,
      paymentId: paymentId,
      username: username
    );
  }
}
