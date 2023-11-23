import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/search.dart';
part 'search_dtos.freezed.dart';
part 'search_dtos.g.dart';

@freezed
class SearchProductDto with _$SearchProductDto {
  const factory SearchProductDto({
    required String query,
  }) = _SearchProductDto;

  factory SearchProductDto.fromDomain(SearchProduct search) {
    return SearchProductDto(query: search.query);
  }

  factory SearchProductDto.fromJson(Map<String, dynamic> json) =>
      _$SearchProductDtoFromJson(json);
}

extension SearchProductExtension on SearchProductDto {
  SearchProduct toDomain() {
    return SearchProduct(query: query);
  }
}
