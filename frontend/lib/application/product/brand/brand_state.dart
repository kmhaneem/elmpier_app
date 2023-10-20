import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/brand.dart';

import '../../../domain/product/model/category.dart';
import '../../../domain/product/product_failure.dart';

part 'brand_state.freezed.dart';

@freezed
abstract class BrandState with _$BrandState {
  const factory BrandState.initial() = _Initial;
  const factory BrandState.loadInProgress() = _LoadInProgress;
  const factory BrandState.loadSuccess(List<ProductBrand> brand) = _LoadSuccess;
  const factory BrandState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}
