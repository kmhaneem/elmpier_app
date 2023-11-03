import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/product_failure.dart';

import '../../../../domain/product/model/product.dart';
part 'seller_product_state.freezed.dart';

@freezed
abstract class SellerProductState with _$SellerProductState {
  const factory SellerProductState.initial() = _Initial;
  const factory SellerProductState.loadInProgress() = _LoadInProgress;
  const factory SellerProductState.loadSuccess(List<Product> product) = _LoadSuccess;
  const factory SellerProductState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}


