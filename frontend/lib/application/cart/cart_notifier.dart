import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/domain/cart/cart_failure.dart';
import 'package:frontend/domain/cart/i_cart_repository.dart';
import 'package:frontend/domain/cart/model/cart.dart';

class CartNotifier extends StateNotifier<CartState> {
  final ICartRepository _iCartRepository;

  CartNotifier(this._iCartRepository) : super(const CartState.initial()) {
    loadCartItems();
  }

  Future<void> addToCart(Cart cart) async {
    Either<CartFailure, Unit> failureOrSuccess;
    state = CartState.actionInProgress();
    failureOrSuccess = await _iCartRepository.addToCart(cart);

    state = failureOrSuccess.fold(
      (failure) => CartState.actionFailure(failure),
      (_) {
        loadCartItems();
        return CartState.createSuccess();
      },
    );
  }

  Future<void> loadCartItems() async {
    Either<CartFailure, List<Cart>> failureOrItems;
    state = CartState.actionInProgress();

    failureOrItems = await _iCartRepository.getCartItems();

    state = failureOrItems.fold(
      (failure) => CartState.actionFailure(failure),
      (items) => CartState.loaded(items),
    );
  }

  Future<void> deleteCartItems(int userId) async {
    Either<CartFailure, Unit> failureOrSuccess;
    state = CartState.actionInProgress();

    failureOrSuccess = await _iCartRepository.deleteCart(userId);

    state = failureOrSuccess.fold(
      (failure) => CartState.actionFailure(failure),
      (_) {
        return CartState.loaded([]);
      },
    );
  }

  Future<void> removeFromCart(int userId, Cart cartItem) async {
    Either<CartFailure, Unit> failureOrSuccess;
    state = CartState.actionInProgress();

    failureOrSuccess = await _iCartRepository.removeFromCart(userId, cartItem);

    state = failureOrSuccess.fold(
      (failure) => CartState.actionFailure(failure),
      (_) {
        loadCartItems();
        return CartState.createSuccess();
      },
    );
  }
}
