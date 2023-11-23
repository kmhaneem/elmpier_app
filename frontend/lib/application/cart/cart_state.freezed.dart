// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function(List<Cart> cartItems) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function(List<Cart> cartItems)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function(List<Cart> cartItems)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CartState.initial()';
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
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function(List<Cart> cartItems) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function(List<Cart> cartItems)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function(List<Cart> cartItems)? loaded,
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
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$ActionInProgressImpl>
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
    return 'CartState.actionInProgress()';
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
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function(List<Cart> cartItems) loaded,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function(List<Cart> cartItems)? loaded,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function(List<Cart> cartItems)? loaded,
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
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$CreateSuccessImpl>
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
    return 'CartState.createSuccess()';
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
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function(List<Cart> cartItems) loaded,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function(List<Cart> cartItems)? loaded,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function(List<Cart> cartItems)? loaded,
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
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements CartState {
  const factory _CreateSuccess() = _$CreateSuccessImpl;
}

/// @nodoc
abstract class _$$ActionFailureImplCopyWith<$Res> {
  factory _$$ActionFailureImplCopyWith(
          _$ActionFailureImpl value, $Res Function(_$ActionFailureImpl) then) =
      __$$ActionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartFailure cartFailure});

  $CartFailureCopyWith<$Res> get cartFailure;
}

/// @nodoc
class __$$ActionFailureImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ActionFailureImpl>
    implements _$$ActionFailureImplCopyWith<$Res> {
  __$$ActionFailureImplCopyWithImpl(
      _$ActionFailureImpl _value, $Res Function(_$ActionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartFailure = null,
  }) {
    return _then(_$ActionFailureImpl(
      null == cartFailure
          ? _value.cartFailure
          : cartFailure // ignore: cast_nullable_to_non_nullable
              as CartFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartFailureCopyWith<$Res> get cartFailure {
    return $CartFailureCopyWith<$Res>(_value.cartFailure, (value) {
      return _then(_value.copyWith(cartFailure: value));
    });
  }
}

/// @nodoc

class _$ActionFailureImpl implements _ActionFailure {
  const _$ActionFailureImpl(this.cartFailure);

  @override
  final CartFailure cartFailure;

  @override
  String toString() {
    return 'CartState.actionFailure(cartFailure: $cartFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionFailureImpl &&
            (identical(other.cartFailure, cartFailure) ||
                other.cartFailure == cartFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionFailureImplCopyWith<_$ActionFailureImpl> get copyWith =>
      __$$ActionFailureImplCopyWithImpl<_$ActionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function(List<Cart> cartItems) loaded,
  }) {
    return actionFailure(cartFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function(List<Cart> cartItems)? loaded,
  }) {
    return actionFailure?.call(cartFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function(List<Cart> cartItems)? loaded,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(cartFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements CartState {
  const factory _ActionFailure(final CartFailure cartFailure) =
      _$ActionFailureImpl;

  CartFailure get cartFailure;
  @JsonKey(ignore: true)
  _$$ActionFailureImplCopyWith<_$ActionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Cart> cartItems});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$LoadedImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Cart> cartItems) : _cartItems = cartItems;

  final List<Cart> _cartItems;
  @override
  List<Cart> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.loaded(cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function(List<Cart> cartItems) loaded,
  }) {
    return loaded(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? createSuccess,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function(List<Cart> cartItems)? loaded,
  }) {
    return loaded?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? createSuccess,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function(List<Cart> cartItems)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(final List<Cart> cartItems) = _$LoadedImpl;

  List<Cart> get cartItems;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
