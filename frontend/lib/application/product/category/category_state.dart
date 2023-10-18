import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/product/model/category.dart';
import '../../../domain/product/product_failure.dart';

part 'category_state.freezed.dart';


@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loadInProgress() = _LoadInProgress;
  const factory CategoryState.loadSuccess(List<ProductCategory> product) = _LoadSuccess;
  const factory CategoryState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}