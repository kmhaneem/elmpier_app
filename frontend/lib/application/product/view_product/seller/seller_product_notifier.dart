import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/view_product/seller/seller_product_state.dart';

import '../../../../domain/product/i_product_repository.dart';
import '../../../../domain/product/model/product.dart';
import '../../../../domain/product/product_failure.dart';

class SellerProductNotifier extends StateNotifier<SellerProductState> {
  IProductRepository _iProductRepository;
  bool _hasFetchedProducts = false;
  SellerProductNotifier(this._iProductRepository)
      : super(
          const SellerProductState.initial(),
        );

  void productReceived(Either<ProductFailure, List<Product>> failureOrProduct) {
    state = failureOrProduct.fold((f) => SellerProductState.loadFailure(f),
        (products) => SellerProductState.loadSuccess(products));
  }

  Future<void> getSellerProducts() async {
    if (_hasFetchedProducts) return;
    state = const SellerProductState.initial();
    final failureOrProducts = await _iProductRepository.getSellerProduct();
    productReceived(failureOrProducts);
    _hasFetchedProducts = true;
  }
}