import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/product_failure.dart';
import '../../../domain/product/model/product.dart';
part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loadInProgress() = _LoadInProgress;
  const factory ProductState.loadSuccess(List<Product> product) = _LoadSuccess;
  const factory ProductState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}


