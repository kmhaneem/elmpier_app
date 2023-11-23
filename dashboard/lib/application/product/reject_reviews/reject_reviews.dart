import 'package:dartz/dartz.dart';
import 'package:dashboard/application/product/product_state.dart';
import 'package:dashboard/domain/product/i_product_repository.dart';
import 'package:dashboard/domain/product/product_failure.dart';
import 'package:dashboard/domain/product/product_reject.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RejectReviewsNotifier extends StateNotifier<ProductState> {
  final IProductRepository _iProductRepository;

  RejectReviewsNotifier(this._iProductRepository)
      : super(ProductState.initial()) {
    getPendingProducts();
  }

  Future<void> getPendingProducts() async {
    final Either<ProductFailure, List<ProductReject>> failureOrProducts;

    state = const ProductState.loadInProgress();

    failureOrProducts = await _iProductRepository.getRejectedProductsReviews();

    state = failureOrProducts.fold(
      (l) => ProductState.loadFailure(l),
      (r) => ProductState.loadRejectedReviewsSuccess(r),
    );
  }
}
