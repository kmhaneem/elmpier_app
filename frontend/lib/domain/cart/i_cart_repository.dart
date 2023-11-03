import 'package:dartz/dartz.dart';
import 'package:frontend/domain/cart/model/cart.dart';

import 'cart_failure.dart';

abstract class ICartRepository {
  Future<Either<CartFailure, Unit>> addToCart(Cart cart);
  Future<Either<CartFailure, List<Cart>>> getCartItems();
  Future<Either<CartFailure, Unit>> deleteCart(int userId);
  Future<Either<CartFailure, Unit>> removeFromCart(int userId, Cart cartItem);

}
