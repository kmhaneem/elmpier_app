import 'package:dashboard/application/product/review/product_status_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/product/i_product_repository.dart';

class ProductStatusNotifier extends StateNotifier<ProductStatusState> {
  final IProductRepository _iProductRepository;

  ProductStatusNotifier(this._iProductRepository)
      : super(const ProductStatusState.initial());
  // ProductStatusNotifier(this._iProductRepository) : super(null);

  Future<void> productApprove(int id) async {
    state = const ProductStatusState.actionInProgress();
    final failureOrApprove = await _iProductRepository.productToApprove(id);
    state = failureOrApprove.fold(
      (l) => const ProductStatusState.failure(),
      (r) => const ProductStatusState.approve(),
    );
  }

  Future<void> productDecline(int id) async {
    state = const ProductStatusState.actionInProgress();
    final failureOrApprove = await _iProductRepository.productToDecline(id);
    state = failureOrApprove.fold(
      (l) => const ProductStatusState.failure(),
      (r) => const ProductStatusState.approve(),
    );
  }

  Future<void> productVisible(int id) async {
    state = const ProductStatusState.actionInProgress();
    final failureOrApprove = await _iProductRepository.productToVisible(id);
    state = failureOrApprove.fold(
      (l) => const ProductStatusState.failure(),
      (r) => const ProductStatusState.approve(),
    );
  }
}
