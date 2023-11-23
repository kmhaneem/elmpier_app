// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_condition_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductConditionDto _$ProductConditionDtoFromJson(Map<String, dynamic> json) {
  return _ProductConditionDto.fromJson(json);
}

/// @nodoc
mixin _$ProductConditionDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductConditionDtoCopyWith<ProductConditionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductConditionDtoCopyWith<$Res> {
  factory $ProductConditionDtoCopyWith(
          ProductConditionDto value, $Res Function(ProductConditionDto) then) =
      _$ProductConditionDtoCopyWithImpl<$Res, ProductConditionDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProductConditionDtoCopyWithImpl<$Res, $Val extends ProductConditionDto>
    implements $ProductConditionDtoCopyWith<$Res> {
  _$ProductConditionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductConditionDtoImplCopyWith<$Res>
    implements $ProductConditionDtoCopyWith<$Res> {
  factory _$$ProductConditionDtoImplCopyWith(_$ProductConditionDtoImpl value,
          $Res Function(_$ProductConditionDtoImpl) then) =
      __$$ProductConditionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ProductConditionDtoImplCopyWithImpl<$Res>
    extends _$ProductConditionDtoCopyWithImpl<$Res, _$ProductConditionDtoImpl>
    implements _$$ProductConditionDtoImplCopyWith<$Res> {
  __$$ProductConditionDtoImplCopyWithImpl(_$ProductConditionDtoImpl _value,
      $Res Function(_$ProductConditionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ProductConditionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductConditionDtoImpl extends _ProductConditionDto {
  const _$ProductConditionDtoImpl({required this.id, required this.name})
      : super._();

  factory _$ProductConditionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductConditionDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductConditionDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductConditionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductConditionDtoImplCopyWith<_$ProductConditionDtoImpl> get copyWith =>
      __$$ProductConditionDtoImplCopyWithImpl<_$ProductConditionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductConditionDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductConditionDto extends ProductConditionDto {
  const factory _ProductConditionDto(
      {required final int id,
      required final String name}) = _$ProductConditionDtoImpl;
  const _ProductConditionDto._() : super._();

  factory _ProductConditionDto.fromJson(Map<String, dynamic> json) =
      _$ProductConditionDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductConditionDtoImplCopyWith<_$ProductConditionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
