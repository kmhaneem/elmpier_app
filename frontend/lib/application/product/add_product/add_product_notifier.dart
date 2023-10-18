import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/add_product/add_product_state.dart';

import '../../../domain/product/i_product_repository.dart';
import '../../../domain/product/model/product.dart';
import 'package:image_picker/image_picker.dart';

import '../../../domain/product/product_failure.dart';

class AddProductNotifier extends StateNotifier<AddProductState> {
  final IProductRepository _iProductRepository;
  AddProductNotifier(this._iProductRepository)
      : super(const AddProductState.initial());


  Future<void> createProduct(Product product, List<XFile> images) async {
    Either<ProductFailure, Unit> failureOrSuccess;

    state = AddProductState.actionInProgress();
    failureOrSuccess = await _iProductRepository.create(product, images);

    state = failureOrSuccess.fold(
      (failure) => AddProductState.actionFailure(failure),
      (_) => AddProductState.createSuccess(),
    );
  }
}
