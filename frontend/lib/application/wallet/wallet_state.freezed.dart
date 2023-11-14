// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WalletFailure walletFailure) actionFailure,
    required TResult Function(Wallet wallet) walletLoaded,
    required TResult Function() walletAmountAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WalletFailure walletFailure)? actionFailure,
    TResult? Function(Wallet wallet)? walletLoaded,
    TResult? Function()? walletAmountAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WalletFailure walletFailure)? actionFailure,
    TResult Function(Wallet wallet)? walletLoaded,
    TResult Function()? walletAmountAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_WalletLoaded value) walletLoaded,
    required TResult Function(_WalledAmountAdded value) walletAmountAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_WalletLoaded value)? walletLoaded,
    TResult? Function(_WalledAmountAdded value)? walletAmountAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_WalletLoaded value)? walletLoaded,
    TResult Function(_WalledAmountAdded value)? walletAmountAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WalletState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WalletFailure walletFailure) actionFailure,
    required TResult Function(Wallet wallet) walletLoaded,
    required TResult Function() walletAmountAdded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WalletFailure walletFailure)? actionFailure,
    TResult? Function(Wallet wallet)? walletLoaded,
    TResult? Function()? walletAmountAdded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WalletFailure walletFailure)? actionFailure,
    TResult Function(Wallet wallet)? walletLoaded,
    TResult Function()? walletAmountAdded,
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
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_WalletLoaded value) walletLoaded,
    required TResult Function(_WalledAmountAdded value) walletAmountAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_WalletLoaded value)? walletLoaded,
    TResult? Function(_WalledAmountAdded value)? walletAmountAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_WalletLoaded value)? walletLoaded,
    TResult Function(_WalledAmountAdded value)? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WalletState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_ActionInProgress>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'WalletState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WalletFailure walletFailure) actionFailure,
    required TResult Function(Wallet wallet) walletLoaded,
    required TResult Function() walletAmountAdded,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WalletFailure walletFailure)? actionFailure,
    TResult? Function(Wallet wallet)? walletLoaded,
    TResult? Function()? walletAmountAdded,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WalletFailure walletFailure)? actionFailure,
    TResult Function(Wallet wallet)? walletLoaded,
    TResult Function()? walletAmountAdded,
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
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_WalletLoaded value) walletLoaded,
    required TResult Function(_WalledAmountAdded value) walletAmountAdded,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_WalletLoaded value)? walletLoaded,
    TResult? Function(_WalledAmountAdded value)? walletAmountAdded,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_WalletLoaded value)? walletLoaded,
    TResult Function(_WalledAmountAdded value)? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements WalletState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_ActionFailureCopyWith<$Res> {
  factory _$$_ActionFailureCopyWith(
          _$_ActionFailure value, $Res Function(_$_ActionFailure) then) =
      __$$_ActionFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletFailure walletFailure});

  $WalletFailureCopyWith<$Res> get walletFailure;
}

/// @nodoc
class __$$_ActionFailureCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_ActionFailure>
    implements _$$_ActionFailureCopyWith<$Res> {
  __$$_ActionFailureCopyWithImpl(
      _$_ActionFailure _value, $Res Function(_$_ActionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletFailure = null,
  }) {
    return _then(_$_ActionFailure(
      null == walletFailure
          ? _value.walletFailure
          : walletFailure // ignore: cast_nullable_to_non_nullable
              as WalletFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletFailureCopyWith<$Res> get walletFailure {
    return $WalletFailureCopyWith<$Res>(_value.walletFailure, (value) {
      return _then(_value.copyWith(walletFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.walletFailure);

  @override
  final WalletFailure walletFailure;

  @override
  String toString() {
    return 'WalletState.actionFailure(walletFailure: $walletFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionFailure &&
            (identical(other.walletFailure, walletFailure) ||
                other.walletFailure == walletFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionFailureCopyWith<_$_ActionFailure> get copyWith =>
      __$$_ActionFailureCopyWithImpl<_$_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WalletFailure walletFailure) actionFailure,
    required TResult Function(Wallet wallet) walletLoaded,
    required TResult Function() walletAmountAdded,
  }) {
    return actionFailure(walletFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WalletFailure walletFailure)? actionFailure,
    TResult? Function(Wallet wallet)? walletLoaded,
    TResult? Function()? walletAmountAdded,
  }) {
    return actionFailure?.call(walletFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WalletFailure walletFailure)? actionFailure,
    TResult Function(Wallet wallet)? walletLoaded,
    TResult Function()? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(walletFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_WalletLoaded value) walletLoaded,
    required TResult Function(_WalledAmountAdded value) walletAmountAdded,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_WalletLoaded value)? walletLoaded,
    TResult? Function(_WalledAmountAdded value)? walletAmountAdded,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_WalletLoaded value)? walletLoaded,
    TResult Function(_WalledAmountAdded value)? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements WalletState {
  const factory _ActionFailure(final WalletFailure walletFailure) =
      _$_ActionFailure;

  WalletFailure get walletFailure;
  @JsonKey(ignore: true)
  _$$_ActionFailureCopyWith<_$_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WalletLoadedCopyWith<$Res> {
  factory _$$_WalletLoadedCopyWith(
          _$_WalletLoaded value, $Res Function(_$_WalletLoaded) then) =
      __$$_WalletLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$_WalletLoadedCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_WalletLoaded>
    implements _$$_WalletLoadedCopyWith<$Res> {
  __$$_WalletLoadedCopyWithImpl(
      _$_WalletLoaded _value, $Res Function(_$_WalletLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$_WalletLoaded(
      null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$_WalletLoaded implements _WalletLoaded {
  const _$_WalletLoaded(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'WalletState.walletLoaded(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletLoaded &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletLoadedCopyWith<_$_WalletLoaded> get copyWith =>
      __$$_WalletLoadedCopyWithImpl<_$_WalletLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WalletFailure walletFailure) actionFailure,
    required TResult Function(Wallet wallet) walletLoaded,
    required TResult Function() walletAmountAdded,
  }) {
    return walletLoaded(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WalletFailure walletFailure)? actionFailure,
    TResult? Function(Wallet wallet)? walletLoaded,
    TResult? Function()? walletAmountAdded,
  }) {
    return walletLoaded?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WalletFailure walletFailure)? actionFailure,
    TResult Function(Wallet wallet)? walletLoaded,
    TResult Function()? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (walletLoaded != null) {
      return walletLoaded(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_WalletLoaded value) walletLoaded,
    required TResult Function(_WalledAmountAdded value) walletAmountAdded,
  }) {
    return walletLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_WalletLoaded value)? walletLoaded,
    TResult? Function(_WalledAmountAdded value)? walletAmountAdded,
  }) {
    return walletLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_WalletLoaded value)? walletLoaded,
    TResult Function(_WalledAmountAdded value)? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (walletLoaded != null) {
      return walletLoaded(this);
    }
    return orElse();
  }
}

abstract class _WalletLoaded implements WalletState {
  const factory _WalletLoaded(final Wallet wallet) = _$_WalletLoaded;

  Wallet get wallet;
  @JsonKey(ignore: true)
  _$$_WalletLoadedCopyWith<_$_WalletLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WalledAmountAddedCopyWith<$Res> {
  factory _$$_WalledAmountAddedCopyWith(_$_WalledAmountAdded value,
          $Res Function(_$_WalledAmountAdded) then) =
      __$$_WalledAmountAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalledAmountAddedCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_WalledAmountAdded>
    implements _$$_WalledAmountAddedCopyWith<$Res> {
  __$$_WalledAmountAddedCopyWithImpl(
      _$_WalledAmountAdded _value, $Res Function(_$_WalledAmountAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WalledAmountAdded implements _WalledAmountAdded {
  const _$_WalledAmountAdded();

  @override
  String toString() {
    return 'WalletState.walletAmountAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WalledAmountAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WalletFailure walletFailure) actionFailure,
    required TResult Function(Wallet wallet) walletLoaded,
    required TResult Function() walletAmountAdded,
  }) {
    return walletAmountAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WalletFailure walletFailure)? actionFailure,
    TResult? Function(Wallet wallet)? walletLoaded,
    TResult? Function()? walletAmountAdded,
  }) {
    return walletAmountAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WalletFailure walletFailure)? actionFailure,
    TResult Function(Wallet wallet)? walletLoaded,
    TResult Function()? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (walletAmountAdded != null) {
      return walletAmountAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_WalletLoaded value) walletLoaded,
    required TResult Function(_WalledAmountAdded value) walletAmountAdded,
  }) {
    return walletAmountAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_WalletLoaded value)? walletLoaded,
    TResult? Function(_WalledAmountAdded value)? walletAmountAdded,
  }) {
    return walletAmountAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_WalletLoaded value)? walletLoaded,
    TResult Function(_WalledAmountAdded value)? walletAmountAdded,
    required TResult orElse(),
  }) {
    if (walletAmountAdded != null) {
      return walletAmountAdded(this);
    }
    return orElse();
  }
}

abstract class _WalledAmountAdded implements WalletState {
  const factory _WalledAmountAdded() = _$_WalledAmountAdded;
}
