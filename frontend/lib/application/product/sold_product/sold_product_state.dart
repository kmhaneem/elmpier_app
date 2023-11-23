import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/sold_product.dart';

import '../../../domain/product/product_failure.dart';
part 'sold_product_state.freezed.dart';

@freezed
abstract class SoldProductState with _$SoldProductState {
  const factory SoldProductState.initial() = _Initial;
  const factory SoldProductState.actionInProgress() = _ActionInProgress;
  const factory SoldProductState.success(List<SoldProduct> product) = _Success;
  const factory SoldProductState.actionFailure(ProductFailure productFailure) =
      _ActionFailure;
}
