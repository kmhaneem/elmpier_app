import 'package:freezed_annotation/freezed_annotation.dart';
part 'advertisement.freezed.dart';

@freezed
abstract class Advertisement implements _$Advertisement {
  const Advertisement._();

  const factory Advertisement({
    required int id,
    required String name,
    required String description,
    required int category,
    required int brand,
    required int model,
    required int price,
    required List<String> imageUrls,
  }) = _Advertisement;
}
