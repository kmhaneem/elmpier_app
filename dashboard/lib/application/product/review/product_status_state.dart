import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_status_state.freezed.dart';

@freezed
abstract class ProductStatusState with _$ProductStatusState {
  const factory ProductStatusState.initial() = _Initial;
  const factory ProductStatusState.actionInProgress() = _ActionInProgress;
  const factory ProductStatusState.approve() = _Approve;
  const factory ProductStatusState.failure() = _Failure;
}
