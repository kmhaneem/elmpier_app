import 'package:delivery/application/product/product_state.dart';
import 'package:delivery/domain/product/i_product_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends StateNotifier<ProductState> {
  final IProductRepository _iProductRepository;
  ProductNotifier(this._iProductRepository) : super(ProductState.initial());

  Future<void> getOrderedProduct(int productId) async {
    state = ProductState.loadInProgress();
    print('Fetching product...');

    final failureOrProduct =
        await _iProductRepository.getOrderedProduct(productId);

    failureOrProduct.fold((l) {
      print('Load failed: $l');
      state = ProductState.loadFailure(l);
    }, (r) {
      print('Product loaded: $r');
      state = ProductState.loadSuccess(r);
    });
  }

  Future<void> rejectProductReason(int productId, String reason) async {
    state = ProductState.loadInProgress();

    final failureOrReject =
        await _iProductRepository.rejectMessage(productId, reason);

    state = failureOrReject.fold(
      (l) => ProductState.rejectFailure(l),
      (r) => ProductState.rejectSuccess(),
    );
  }

  Future<void> pickupProduct(int productId) async {
    state = ProductState.loadInProgress();

    final failureOrReject =
        await _iProductRepository.pickupProduct(productId);

    state = failureOrReject.fold(
      (l) => ProductState.rejectFailure(l),
      (r) => ProductState.pickupSuccess(),
    );
  }

  Future<void> deliveryProduct(int productId) async {
    state = ProductState.loadInProgress();

    final failureOrReject =
        await _iProductRepository.deliveryProduct(productId);

    state = failureOrReject.fold(
      (l) => ProductState.rejectFailure(l),
      (r) => ProductState.deliverySuccess(),
    );
  }

  
}
