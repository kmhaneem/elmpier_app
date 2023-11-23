// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
    required TResult Function() exceededLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
    TResult? Function()? exceededLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    TResult Function()? exceededLimit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ExceededLimit value) exceededLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ExceededLimit value)? exceededLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ExceededLimit value)? exceededLimit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFailureCopyWith<$Res> {
  factory $ProductFailureCopyWith(
          ProductFailure value, $Res Function(ProductFailure) then) =
      _$ProductFailureCopyWithImpl<$Res, ProductFailure>;
}

/// @nodoc
class _$ProductFailureCopyWithImpl<$Res, $Val extends ProductFailure>
    implements $ProductFailureCopyWith<$Res> {
  _$ProductFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnExpectedImplCopyWith<$Res> {
  factory _$$UnExpectedImplCopyWith(
          _$UnExpectedImpl value, $Res Function(_$UnExpectedImpl) then) =
      __$$UnExpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnExpectedImplCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res, _$UnExpectedImpl>
    implements _$$UnExpectedImplCopyWith<$Res> {
  __$$UnExpectedImplCopyWithImpl(
      _$UnExpectedImpl _value, $Res Function(_$UnExpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnExpectedImpl implements _UnExpected {
  const _$UnExpectedImpl();

  @override
  String toString() {
    return 'ProductFailure.unExpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnExpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
    required TResult Function() exceededLimit,
  }) {
    return unExpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
    TResult? Function()? exceededLimit,
  }) {
    return unExpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    TResult Function()? exceededLimit,
    required TResult orElse(),
  }) {
    if (unExpected != null) {
      return unExpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ExceededLimit value) exceededLimit,
  }) {
    return unExpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ExceededLimit value)? exceededLimit,
  }) {
    return unExpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ExceededLimit value)? exceededLimit,
    required TResult orElse(),
  }) {
    if (unExpected != null) {
      return unExpected(this);
    }
    return orElse();
  }
}

abstract class _UnExpected implements ProductFailure {
  const factory _UnExpected() = _$UnExpectedImpl;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'ProductFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
    required TResult Function() exceededLimit,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
    TResult? Function()? exceededLimit,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    TResult Function()? exceededLimit,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ExceededLimit value) exceededLimit,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ExceededLimit value)? exceededLimit,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ExceededLimit value)? exceededLimit,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements ProductFailure {
  const factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'ProductFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
    required TResult Function() exceededLimit,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
    TResult? Function()? exceededLimit,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    TResult Function()? exceededLimit,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ExceededLimit value) exceededLimit,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ExceededLimit value)? exceededLimit,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ExceededLimit value)? exceededLimit,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ProductFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$ExceededLimitImplCopyWith<$Res> {
  factory _$$ExceededLimitImplCopyWith(
          _$ExceededLimitImpl value, $Res Function(_$ExceededLimitImpl) then) =
      __$$ExceededLimitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExceededLimitImplCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res, _$ExceededLimitImpl>
    implements _$$ExceededLimitImplCopyWith<$Res> {
  __$$ExceededLimitImplCopyWithImpl(
      _$ExceededLimitImpl _value, $Res Function(_$ExceededLimitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExceededLimitImpl implements _ExceededLimit {
  const _$ExceededLimitImpl();

  @override
  String toString() {
    return 'ProductFailure.exceededLimit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExceededLimitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
    required TResult Function() exceededLimit,
  }) {
    return exceededLimit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
    TResult? Function()? exceededLimit,
  }) {
    return exceededLimit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    TResult Function()? exceededLimit,
    required TResult orElse(),
  }) {
    if (exceededLimit != null) {
      return exceededLimit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ExceededLimit value) exceededLimit,
  }) {
    return exceededLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ExceededLimit value)? exceededLimit,
  }) {
    return exceededLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ExceededLimit value)? exceededLimit,
    required TResult orElse(),
  }) {
    if (exceededLimit != null) {
      return exceededLimit(this);
    }
    return orElse();
  }
}

abstract class _ExceededLimit implements ProductFailure {
  const factory _ExceededLimit() = _$ExceededLimitImpl;
}
