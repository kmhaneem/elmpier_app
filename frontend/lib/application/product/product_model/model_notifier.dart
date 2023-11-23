import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/product_model/model_state.dart';
import 'package:frontend/domain/product/i_product_repository.dart';

class ModelNotifier extends StateNotifier<ModelState> {
  final IProductRepository _iProductRepository;
  ModelNotifier(this._iProductRepository) : super(const ModelState.initial());

  void fetchModels() async {
    state = const ModelState.loadInProgress();
    final failureOrModels = await _iProductRepository.getAllModels();
    state = failureOrModels.fold((f) {
      return ModelState.loadFailure(f);
    }, (models) => ModelState.loadSuccess(models));
  }
}
