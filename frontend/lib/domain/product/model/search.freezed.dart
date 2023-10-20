// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProduct {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProductCopyWith<SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductCopyWith<$Res> {
  factory $SearchProductCopyWith(
          SearchProduct value, $Res Function(SearchProduct) then) =
      _$SearchProductCopyWithImpl<$Res, SearchProduct>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchProductCopyWithImpl<$Res, $Val extends SearchProduct>
    implements $SearchProductCopyWith<$Res> {
  _$SearchProductCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchProductCopyWith<$Res>
    implements $SearchProductCopyWith<$Res> {
  factory _$$_SearchProductCopyWith(
          _$_SearchProduct value, $Res Function(_$_SearchProduct) then) =
      __$$_SearchProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchProductCopyWithImpl<$Res>
    extends _$SearchProductCopyWithImpl<$Res, _$_SearchProduct>
    implements _$$_SearchProductCopyWith<$Res> {
  __$$_SearchProductCopyWithImpl(
      _$_SearchProduct _value, $Res Function(_$_SearchProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchProduct(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchProduct implements _SearchProduct {
  const _$_SearchProduct({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProduct(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchProduct &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchProductCopyWith<_$_SearchProduct> get copyWith =>
      __$$_SearchProductCopyWithImpl<_$_SearchProduct>(this, _$identity);
}

abstract class _SearchProduct implements SearchProduct {
  const factory _SearchProduct({required final String query}) =
      _$_SearchProduct;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchProductCopyWith<_$_SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
