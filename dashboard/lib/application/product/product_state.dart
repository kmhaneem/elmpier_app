import 'package:dashboard/domain/product/product_reject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';
part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loadInProgress() = _LoadInProgress;
  const factory ProductState.loadSuccess(List<Product> product) = _LoadSuccess;
  const factory ProductState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;

  const factory ProductState.loadAllProductsSuccess(List<Product> product) = _LoadAllProductsSuccess;
  const factory ProductState.loadApprovedProductsSuccess(List<Product> product) = _LoadApprovedProductsSuccess;
  const factory ProductState.loadPendingProductsSuccess(List<Product> product) = _LoadPendingProductsSuccess;
  const factory ProductState.loadRejectedProductsSuccess(List<Product> product) = _LoadRejectedProductsSuccess;
  const factory ProductState.loadRejectedReviewsSuccess(List<ProductReject> product) = _LoadRejectedReviewsSuccess;

  const factory ProductState.approveUpdated() = _ApproveUpdated;
  const factory ProductState.rejectUpdated() = _RejectUpdated;
}

