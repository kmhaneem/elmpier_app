import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/product_condition.dart';

import '../../../domain/product/product_failure.dart';
part 'product_condition_state.freezed.dart';

@freezed
abstract class ProductConditionState with _$ProductConditionState {
  const factory ProductConditionState.initial() = _Initial;
  const factory ProductConditionState.loadInProgress() = _LoadInProgress;
  const factory ProductConditionState.loadSuccess(List<ProductCondition> condition) = _LoadSuccess;
  const factory ProductConditionState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}
