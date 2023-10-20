// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchProductDto _$SearchProductDtoFromJson(Map<String, dynamic> json) {
  return _SearchProductDto.fromJson(json);
}

/// @nodoc
mixin _$SearchProductDto {
  String get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductDtoCopyWith<SearchProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductDtoCopyWith<$Res> {
  factory $SearchProductDtoCopyWith(
          SearchProductDto value, $Res Function(SearchProductDto) then) =
      _$SearchProductDtoCopyWithImpl<$Res, SearchProductDto>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchProductDtoCopyWithImpl<$Res, $Val extends SearchProductDto>
    implements $SearchProductDtoCopyWith<$Res> {
  _$SearchProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchProductDtoCopyWith<$Res>
    implements $SearchProductDtoCopyWith<$Res> {
  factory _$$_SearchProductDtoCopyWith(
          _$_SearchProductDto value, $Res Function(_$_SearchProductDto) then) =
      __$$_SearchProductDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchProductDtoCopyWithImpl<$Res>
    extends _$SearchProductDtoCopyWithImpl<$Res, _$_SearchProductDto>
    implements _$$_SearchProductDtoCopyWith<$Res> {
  __$$_SearchProductDtoCopyWithImpl(
      _$_SearchProductDto _value, $Res Function(_$_SearchProductDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchProductDto(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchProductDto implements _SearchProductDto {
  const _$_SearchProductDto({required this.query});

  factory _$_SearchProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchProductDtoFromJson(json);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProductDto(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchProductDto &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchProductDtoCopyWith<_$_SearchProductDto> get copyWith =>
      __$$_SearchProductDtoCopyWithImpl<_$_SearchProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchProductDtoToJson(
      this,
    );
  }
}

abstract class _SearchProductDto implements SearchProductDto {
  const factory _SearchProductDto({required final String query}) =
      _$_SearchProductDto;

  factory _SearchProductDto.fromJson(Map<String, dynamic> json) =
      _$_SearchProductDto.fromJson;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchProductDtoCopyWith<_$_SearchProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
