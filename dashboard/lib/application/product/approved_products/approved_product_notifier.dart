import 'package:dartz/dartz.dart';
import 'package:dashboard/application/product/product_state.dart';
import 'package:dashboard/domain/product/i_product_repository.dart';
import 'package:dashboard/domain/product/product.dart';
import 'package:dashboard/domain/product/product_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApprovedProductNotifier extends StateNotifier<ProductState> {
  final IProductRepository _iProductRepository;

  ApprovedProductNotifier(this._iProductRepository)
      : super(ProductState.initial()) {
    getApprovedProducts();
  }

  Future<void> getApprovedProducts() async {
    final Either<ProductFailure, List<Product>> failureOrProducts;

    state = const ProductState.loadInProgress();

    failureOrProducts = await _iProductRepository.getApprovedProducts();

    state = failureOrProducts.fold(
      (l) => ProductState.loadFailure(l),
      (r) => ProductState.loadApprovedProductsSuccess(r),
    );
  }
}
