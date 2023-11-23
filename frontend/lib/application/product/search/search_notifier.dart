import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/search/search_state.dart';
import 'package:frontend/domain/product/i_product_repository.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  final IProductRepository _iProductRepository;

  SearchNotifier(this._iProductRepository) : super(const SearchState.initial());

  void fetchProducts(String query, int? userId) async {
    state = const SearchState.loadInProgress();
    final failureOrProducts =
        await _iProductRepository.getAllSearchedProducts(query, userId);
    state = failureOrProducts.fold(
      (f) {
        return SearchState.loadFailure(f);
      },
      (products) => SearchState.loadSuccess(products),
    );
  }
}
