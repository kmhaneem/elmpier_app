import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/brand/brand_state.dart';
import 'package:frontend/domain/product/i_product_repository.dart';

class BrandNotifier extends StateNotifier<BrandState> {
  final IProductRepository _iProductRepository;

  BrandNotifier(this._iProductRepository) : super(const BrandState.initial());

  void fetchBrands() async {
    state = const BrandState.loadInProgress();
    final failureOrBrands = await _iProductRepository.getAllBrands();
    state = failureOrBrands.fold((f) {
      print("Error fetching brands: $f");
      return BrandState.loadFailure(f);
    }, (brands) => BrandState.loadSuccess(brands));
  }
}