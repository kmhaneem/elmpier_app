import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_failure.freezed.dart';

@freezed
abstract class TransactionFailure implements _$TransactionFailure {
  const factory TransactionFailure.unExpected() = _UnExpected;
  const factory TransactionFailure.notFound() = _NotFound;
  const factory TransactionFailure.serverError() = _ServerError;
}
