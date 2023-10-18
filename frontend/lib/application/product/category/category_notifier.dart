import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/category/category_state.dart';
import 'package:frontend/application/product/view_product/product_state.dart';

import '../../../domain/product/i_product_repository.dart';

class CategoryNotifier extends StateNotifier<CategoryState> {
  final IProductRepository _iProductRepository;

  CategoryNotifier(this._iProductRepository)
      : super(const CategoryState.initial());

  void fetchCategories() async {
    state = const CategoryState.loadInProgress();
    final failureOrCategories = await _iProductRepository.getAllCategories();
    state = failureOrCategories.fold((f) {
      print("Error fetching categories: $f");
      return CategoryState.loadFailure(f);
    }, (categories) => CategoryState.loadSuccess(categories));
  }
}


