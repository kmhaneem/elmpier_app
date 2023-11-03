import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/view_product/product_state.dart';
import 'package:frontend/domain/product/i_product_repository.dart';

import '../../../domain/product/model/product.dart';
import '../../../domain/product/product_failure.dart';

class ProductNotifier extends StateNotifier<ProductState> {
  final IProductRepository _iProductRepository;
  bool _hasFetchedProducts = false;
  ProductNotifier(this._iProductRepository)
      : super(
          const ProductState.initial(),
        );

  Future<void> watchAllStarted() async {
    if (_hasFetchedProducts) return;
    state = const ProductState.initial();
    final failureOrProducts = await _iProductRepository.watchAll();
    productReceived(failureOrProducts);
    _hasFetchedProducts = true;
  }

  void productReceived(Either<ProductFailure, List<Product>> failureOrProduct) {
    state = failureOrProduct.fold((f) => ProductState.loadFailure(f),
        (products) => ProductState.loadSuccess(products));
  }

  void getSellerProducts() async {
    if (_hasFetchedProducts) return;
    state = const ProductState.initial();
    final failureOrProducts = await _iProductRepository.getSellerProduct();
    productReceived(failureOrProducts);
    _hasFetchedProducts = true;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
