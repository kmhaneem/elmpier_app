import 'package:delivery/domain/product/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/product/product_failures.dart';
part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loadInProgress() = _LoadInProgress;
  const factory ProductState.loadSuccess(Product product) = _LoadSuccess;
  const factory ProductState.loadFailure(ProductFailure orderItemFailure) =
      _LoadFailure;
  const factory ProductState.rejectFailure(ProductFailure failure) =
      _RejectFailure;
  const factory ProductState.rejectSuccess() =
      _RejectSuccess;
  const factory ProductState.pickupSuccess() =
      _PickupSuccess;
  const factory ProductState.deliverySuccess() =
      _DeliverySuccess;
  
}
