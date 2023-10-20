import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/model.dart';

import '../../../domain/product/product_failure.dart';
part 'model_state.freezed.dart';

@freezed
abstract class ModelState with _$ModelState {
  const factory ModelState.initial() = _Initial;
  const factory ModelState.loadInProgress() = _LoadInProgress;
  const factory ModelState.loadSuccess(List<ProductModel> brand) = _LoadSuccess;
  const factory ModelState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}
