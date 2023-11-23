import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/condition/product_condition_state.dart';
import 'package:frontend/application/product/product_model/model_state.dart';
import 'package:frontend/domain/product/i_product_repository.dart';

class ProductConditionNotifier extends StateNotifier<ProductConditionState> {
  final IProductRepository _iProductRepository;
  ProductConditionNotifier(this._iProductRepository)
      : super(const ProductConditionState.initial());

  void fetchConditions() async {
    state = const ProductConditionState.loadInProgress();
    final failureOrModels = await _iProductRepository.getAllConditions();
    state = failureOrModels.fold((f) {
      return ProductConditionState.loadFailure(f);
    }, (c) => ProductConditionState.loadSuccess(c));
  }
}
