import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/product.dart';

import '../../../domain/product/product_failure.dart';
part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
    const factory SearchState.initial() = _Initial;
  const factory SearchState.loadInProgress() = _LoadInProgress;
  const factory SearchState.loadSuccess(List<Product> product) = _LoadSuccess;
  const factory SearchState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}