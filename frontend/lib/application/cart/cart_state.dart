import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/cart/cart_failure.dart';

import '../../domain/cart/model/cart.dart';
part 'cart_state.freezed.dart';

@freezed
 class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.actionInProgress() = _ActionInProgress;
  const factory CartState.createSuccess() = _CreateSuccess;
  const factory CartState.actionFailure(CartFailure cartFailure) =
      _ActionFailure;
  const factory CartState.loaded(List<Cart> cartItems) = _Loaded;
}

extension CartStateX on CartState {
  int get itemsCount {
    return this is _Loaded ? (this as _Loaded).cartItems.length : 0;
  }
}
