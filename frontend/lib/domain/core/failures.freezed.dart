// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<T, $Res> {
  factory _$$_EmptyCopyWith(
          _$_Empty<T> value, $Res Function(_$_Empty<T>) then) =
      __$$_EmptyCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_Empty<T>>
    implements _$$_EmptyCopyWith<T, $Res> {
  __$$_EmptyCopyWithImpl(_$_Empty<T> _value, $Res Function(_$_Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      __$$_EmptyCopyWithImpl<T, _$_Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({required final T failedValue}) = _$_Empty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExceedingLengthCopyWith<T, $Res> {
  factory _$$_ExceedingLengthCopyWith(_$_ExceedingLength<T> value,
          $Res Function(_$_ExceedingLength<T>) then) =
      __$$_ExceedingLengthCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$_ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_ExceedingLength<T>>
    implements _$$_ExceedingLengthCopyWith<T, $Res> {
  __$$_ExceedingLengthCopyWithImpl(
      _$_ExceedingLength<T> _value, $Res Function(_$_ExceedingLength<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$_ExceedingLength<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExceedingLengthCopyWith<T, _$_ExceedingLength<T>> get copyWith =>
      __$$_ExceedingLengthCopyWithImpl<T, _$_ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$_ExceedingLength<T>;

  T get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$_ExceedingLengthCopyWith<T, _$_ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidImageTypeCopyWith<T, $Res> {
  factory _$$_InvalidImageTypeCopyWith(_$_InvalidImageType<T> value,
          $Res Function(_$_InvalidImageType<T>) then) =
      __$$_InvalidImageTypeCopyWithImpl<T, $Res>;
  @useResult
  $Res call({File failedValue});
}

/// @nodoc
class __$$_InvalidImageTypeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_InvalidImageType<T>>
    implements _$$_InvalidImageTypeCopyWith<T, $Res> {
  __$$_InvalidImageTypeCopyWithImpl(_$_InvalidImageType<T> _value,
      $Res Function(_$_InvalidImageType<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$_InvalidImageType<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_InvalidImageType<T> implements _InvalidImageType<T> {
  const _$_InvalidImageType({required this.failedValue});

  @override
  final File failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidImageType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidImageType<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidImageTypeCopyWith<T, _$_InvalidImageType<T>> get copyWith =>
      __$$_InvalidImageTypeCopyWithImpl<T, _$_InvalidImageType<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return invalidImageType(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return invalidImageType?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (invalidImageType != null) {
      return invalidImageType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return invalidImageType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return invalidImageType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (invalidImageType != null) {
      return invalidImageType(this);
    }
    return orElse();
  }
}

abstract class _InvalidImageType<T> implements ValueFailure<T> {
  const factory _InvalidImageType({required final File failedValue}) =
      _$_InvalidImageType<T>;

  File get failedValue;
  @JsonKey(ignore: true)
  _$$_InvalidImageTypeCopyWith<T, _$_InvalidImageType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidIdCopyWith<T, $Res> {
  factory _$$_InvalidIdCopyWith(
          _$_InvalidId<T> value, $Res Function(_$_InvalidId<T>) then) =
      __$$_InvalidIdCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_InvalidIdCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_InvalidId<T>>
    implements _$$_InvalidIdCopyWith<T, $Res> {
  __$$_InvalidIdCopyWithImpl(
      _$_InvalidId<T> _value, $Res Function(_$_InvalidId<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_InvalidId<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidId<T> implements _InvalidId<T> {
  const _$_InvalidId({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidId(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidId<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidIdCopyWith<T, _$_InvalidId<T>> get copyWith =>
      __$$_InvalidIdCopyWithImpl<T, _$_InvalidId<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return invalidId(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return invalidId?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return invalidId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return invalidId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(this);
    }
    return orElse();
  }
}

abstract class _InvalidId<T> implements ValueFailure<T> {
  const factory _InvalidId({required final T failedValue}) = _$_InvalidId<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$_InvalidIdCopyWith<T, _$_InvalidId<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidQuantityCopyWith<T, $Res> {
  factory _$$_InvalidQuantityCopyWith(_$_InvalidQuantity<T> value,
          $Res Function(_$_InvalidQuantity<T>) then) =
      __$$_InvalidQuantityCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedvalue});
}

/// @nodoc
class __$$_InvalidQuantityCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_InvalidQuantity<T>>
    implements _$$_InvalidQuantityCopyWith<T, $Res> {
  __$$_InvalidQuantityCopyWithImpl(
      _$_InvalidQuantity<T> _value, $Res Function(_$_InvalidQuantity<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedvalue = freezed,
  }) {
    return _then(_$_InvalidQuantity<T>(
      failedvalue: freezed == failedvalue
          ? _value.failedvalue
          : failedvalue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidQuantity<T> implements _InvalidQuantity<T> {
  const _$_InvalidQuantity({required this.failedvalue});

  @override
  final T failedvalue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidQuantity(failedvalue: $failedvalue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidQuantity<T> &&
            const DeepCollectionEquality()
                .equals(other.failedvalue, failedvalue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedvalue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidQuantityCopyWith<T, _$_InvalidQuantity<T>> get copyWith =>
      __$$_InvalidQuantityCopyWithImpl<T, _$_InvalidQuantity<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return invalidQuantity(failedvalue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return invalidQuantity?.call(failedvalue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (invalidQuantity != null) {
      return invalidQuantity(failedvalue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return invalidQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return invalidQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (invalidQuantity != null) {
      return invalidQuantity(this);
    }
    return orElse();
  }
}

abstract class _InvalidQuantity<T> implements ValueFailure<T> {
  const factory _InvalidQuantity({required final T failedvalue}) =
      _$_InvalidQuantity<T>;

  T get failedvalue;
  @JsonKey(ignore: true)
  _$$_InvalidQuantityCopyWith<T, _$_InvalidQuantity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExceedingPriceCopyWith<T, $Res> {
  factory _$$_ExceedingPriceCopyWith(_$_ExceedingPrice<T> value,
          $Res Function(_$_ExceedingPrice<T>) then) =
      __$$_ExceedingPriceCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue, int min, int max});
}

/// @nodoc
class __$$_ExceedingPriceCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_ExceedingPrice<T>>
    implements _$$_ExceedingPriceCopyWith<T, $Res> {
  __$$_ExceedingPriceCopyWithImpl(
      _$_ExceedingPrice<T> _value, $Res Function(_$_ExceedingPrice<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$_ExceedingPrice<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingPrice<T> implements _ExceedingPrice<T> {
  const _$_ExceedingPrice(
      {required this.failedValue, required this.min, required this.max});

  @override
  final T failedValue;
  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingPrice(failedValue: $failedValue, min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExceedingPrice<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExceedingPriceCopyWith<T, _$_ExceedingPrice<T>> get copyWith =>
      __$$_ExceedingPriceCopyWithImpl<T, _$_ExceedingPrice<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return exceedingPrice(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return exceedingPrice?.call(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (exceedingPrice != null) {
      return exceedingPrice(failedValue, min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return exceedingPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return exceedingPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (exceedingPrice != null) {
      return exceedingPrice(this);
    }
    return orElse();
  }
}

abstract class _ExceedingPrice<T> implements ValueFailure<T> {
  const factory _ExceedingPrice(
      {required final T failedValue,
      required final int min,
      required final int max}) = _$_ExceedingPrice<T>;

  T get failedValue;
  int get min;
  int get max;
  @JsonKey(ignore: true)
  _$$_ExceedingPriceCopyWith<T, _$_ExceedingPrice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExceedingImagesCopyWith<T, $Res> {
  factory _$$_ExceedingImagesCopyWith(_$_ExceedingImages<T> value,
          $Res Function(_$_ExceedingImages<T>) then) =
      __$$_ExceedingImagesCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$_ExceedingImagesCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_ExceedingImages<T>>
    implements _$$_ExceedingImagesCopyWith<T, $Res> {
  __$$_ExceedingImagesCopyWithImpl(
      _$_ExceedingImages<T> _value, $Res Function(_$_ExceedingImages<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$_ExceedingImages<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingImages<T> implements _ExceedingImages<T> {
  const _$_ExceedingImages({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingImages(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExceedingImages<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExceedingImagesCopyWith<T, _$_ExceedingImages<T>> get copyWith =>
      __$$_ExceedingImagesCopyWithImpl<T, _$_ExceedingImages<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(File failedValue) invalidImageType,
    required TResult Function(T failedValue) invalidId,
    required TResult Function(T failedvalue) invalidQuantity,
    required TResult Function(T failedValue, int min, int max) exceedingPrice,
    required TResult Function(T failedValue, int max) exceedingImages,
  }) {
    return exceedingImages(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(File failedValue)? invalidImageType,
    TResult? Function(T failedValue)? invalidId,
    TResult? Function(T failedvalue)? invalidQuantity,
    TResult? Function(T failedValue, int min, int max)? exceedingPrice,
    TResult? Function(T failedValue, int max)? exceedingImages,
  }) {
    return exceedingImages?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(File failedValue)? invalidImageType,
    TResult Function(T failedValue)? invalidId,
    TResult Function(T failedvalue)? invalidQuantity,
    TResult Function(T failedValue, int min, int max)? exceedingPrice,
    TResult Function(T failedValue, int max)? exceedingImages,
    required TResult orElse(),
  }) {
    if (exceedingImages != null) {
      return exceedingImages(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidImageType<T> value) invalidImageType,
    required TResult Function(_InvalidId<T> value) invalidId,
    required TResult Function(_InvalidQuantity<T> value) invalidQuantity,
    required TResult Function(_ExceedingPrice<T> value) exceedingPrice,
    required TResult Function(_ExceedingImages<T> value) exceedingImages,
  }) {
    return exceedingImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidImageType<T> value)? invalidImageType,
    TResult? Function(_InvalidId<T> value)? invalidId,
    TResult? Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult? Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult? Function(_ExceedingImages<T> value)? exceedingImages,
  }) {
    return exceedingImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidImageType<T> value)? invalidImageType,
    TResult Function(_InvalidId<T> value)? invalidId,
    TResult Function(_InvalidQuantity<T> value)? invalidQuantity,
    TResult Function(_ExceedingPrice<T> value)? exceedingPrice,
    TResult Function(_ExceedingImages<T> value)? exceedingImages,
    required TResult orElse(),
  }) {
    if (exceedingImages != null) {
      return exceedingImages(this);
    }
    return orElse();
  }
}

abstract class _ExceedingImages<T> implements ValueFailure<T> {
  const factory _ExceedingImages(
      {required final T failedValue,
      required final int max}) = _$_ExceedingImages<T>;

  T get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$_ExceedingImagesCopyWith<T, _$_ExceedingImages<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
