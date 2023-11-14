
import 'package:freezed_annotation/freezed_annotation.dart';
part 'advertisement.freezed.dart';

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement({
    required int id,
    required String name,
    required String description,
    required int price,
    required int conditionId,
    required int categoryId,
    required int brandId,
    required int modelId,
    required int provinceId,
    required int districtId,
    required List<String> imageUrls,
    String? province,
    String? district,
    String? category,
    String? brand,
    String? model,
    String? condition,
    String? phone,
    int? userId,
    String? advertiserName,
    String? createDate
  }) = _Advertisement;
}
