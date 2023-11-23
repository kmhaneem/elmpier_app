import 'package:dartz/dartz.dart';
import 'package:dashboard/application/product/product_state.dart';
import 'package:dashboard/domain/product/i_product_repository.dart';
import 'package:dashboard/domain/product/product.dart';
import 'package:dashboard/domain/product/product_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllProductsNotifier extends StateNotifier<ProductState> {
  final IProductRepository _iProductRepository;

  AllProductsNotifier(this._iProductRepository)
      : super(ProductState.initial()) {
    getAllProducts();
  }

  Future<void> getAllProducts() async {
    final Either<ProductFailure, List<Product>> failureOrProducts;

    state = const ProductState.loadInProgress();

    failureOrProducts = await _iProductRepository.getAllProducts();

    state = failureOrProducts.fold(
      (l) => ProductState.loadFailure(l),
      (r) => ProductState.loadAllProductsSuccess(r),
    );
  }

  Future<void> approveProductUpdated(int id) async {
    final Either<ProductFailure, Unit> failureOrProducts;

    state = const ProductState.loadInProgress();

    failureOrProducts = await _iProductRepository.approveProduct(id);

    state = failureOrProducts.fold(
      (l) => ProductState.loadFailure(l),
      (r) => ProductState.approveUpdated(),
    );
  }

  Future<void> rejectProductUpdated(int id) async {
    final Either<ProductFailure, Unit> failureOrProducts;

    state = const ProductState.loadInProgress();

    failureOrProducts = await _iProductRepository.rejectProduct(id);

    state = failureOrProducts.fold(
      (l) => ProductState.loadFailure(l),
      (r) => ProductState.rejectUpdated(),
    );
  }


}
