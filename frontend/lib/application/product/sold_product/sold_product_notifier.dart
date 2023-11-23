import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/sold_product/sold_product_state.dart';
import 'package:frontend/domain/product/i_product_repository.dart';
import 'package:frontend/domain/product/model/sold_product.dart';
import 'package:frontend/domain/product/product_failure.dart';

class SoldProductNotifier extends StateNotifier<SoldProductState> {
  final IProductRepository _iProductRepository;

  SoldProductNotifier(this._iProductRepository)
      : super(SoldProductState.initial()) {
    soldProducts();
  }

  Future<void> soldProducts() async {
    final Either<ProductFailure, List<SoldProduct>> failureOrSoldProduct;

    state = const SoldProductState.actionInProgress();

    failureOrSoldProduct = await _iProductRepository.getSoldProducts();

    state = failureOrSoldProduct.fold(
      (l) => SoldProductState.actionFailure(l),
      (r) => SoldProductState.success(r),
    );
  }
}
