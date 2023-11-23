import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/product/product_failure.dart';
part 'add_product_state.freezed.dart';

@freezed
abstract class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.actionInProgress() = _ActionInProgress;
  const factory AddProductState.createSuccess() = _CreateSuccess;
  const factory AddProductState.updateSuccess() = _UpdateSuccess;
  const factory AddProductState.deleteSuccess() =  _DeleteSuccess;
  const factory AddProductState.actionFailure(ProductFailure productFailure) =
      _ActionFailure;
}
