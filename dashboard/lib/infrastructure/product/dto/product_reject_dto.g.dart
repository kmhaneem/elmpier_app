// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_reject_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductRejectDtoImpl _$$ProductRejectDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductRejectDtoImpl(
      id: json['id'] as int,
      productId: json['product_id'] as int,
      reason: json['reason'] as String?,
      productname: json['productname'] as String?,
    );

Map<String, dynamic> _$$ProductRejectDtoImplToJson(
        _$ProductRejectDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'reason': instance.reason,
      'productname': instance.productname,
    };
