// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(PaymentFailure failure) paymentFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(PaymentFailure failure)? paymentFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(PaymentFailure failure)? paymentFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(PaymentFailure failure) paymentFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(PaymentFailure failure)? paymentFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(PaymentFailure failure)? paymentFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ActionInProgressImplCopyWith<$Res> {
  factory _$$ActionInProgressImplCopyWith(_$ActionInProgressImpl value,
          $Res Function(_$ActionInProgressImpl) then) =
      __$$ActionInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$ActionInProgressImpl>
    implements _$$ActionInProgressImplCopyWith<$Res> {
  __$$ActionInProgressImplCopyWithImpl(_$ActionInProgressImpl _value,
      $Res Function(_$ActionInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgressImpl implements _ActionInProgress {
  const _$ActionInProgressImpl();

  @override
  String toString() {
    return 'PaymentState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(PaymentFailure failure) paymentFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(PaymentFailure failure)? paymentFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(PaymentFailure failure)? paymentFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements PaymentState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$CreateSuccessImplCopyWith<$Res> {
  factory _$$CreateSuccessImplCopyWith(
          _$CreateSuccessImpl value, $Res Function(_$CreateSuccessImpl) then) =
      __$$CreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateSuccessImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$CreateSuccessImpl>
    implements _$$CreateSuccessImplCopyWith<$Res> {
  __$$CreateSuccessImplCopyWithImpl(
      _$CreateSuccessImpl _value, $Res Function(_$CreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateSuccessImpl implements _CreateSuccess {
  const _$CreateSuccessImpl();

  @override
  String toString() {
    return 'PaymentState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(PaymentFailure failure) paymentFailure,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(PaymentFailure failure)? paymentFailure,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(PaymentFailure failure)? paymentFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements PaymentState {
  const factory _CreateSuccess() = _$CreateSuccessImpl;
}

/// @nodoc
abstract class _$$PaymentFailureImplCopyWith<$Res> {
  factory _$$PaymentFailureImplCopyWith(_$PaymentFailureImpl value,
          $Res Function(_$PaymentFailureImpl) then) =
      __$$PaymentFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentFailure failure});

  $PaymentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$PaymentFailureImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentFailureImpl>
    implements _$$PaymentFailureImplCopyWith<$Res> {
  __$$PaymentFailureImplCopyWithImpl(
      _$PaymentFailureImpl _value, $Res Function(_$PaymentFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PaymentFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PaymentFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentFailureCopyWith<$Res> get failure {
    return $PaymentFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$PaymentFailureImpl implements _PaymentFailure {
  const _$PaymentFailureImpl(this.failure);

  @override
  final PaymentFailure failure;

  @override
  String toString() {
    return 'PaymentState.paymentFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailureImplCopyWith<_$PaymentFailureImpl> get copyWith =>
      __$$PaymentFailureImplCopyWithImpl<_$PaymentFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(PaymentFailure failure) paymentFailure,
  }) {
    return paymentFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(PaymentFailure failure)? paymentFailure,
  }) {
    return paymentFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(PaymentFailure failure)? paymentFailure,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
  }) {
    return paymentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
  }) {
    return paymentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailure implements PaymentState {
  const factory _PaymentFailure(final PaymentFailure failure) =
      _$PaymentFailureImpl;

  PaymentFailure get failure;
  @JsonKey(ignore: true)
  _$$PaymentFailureImplCopyWith<_$PaymentFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
