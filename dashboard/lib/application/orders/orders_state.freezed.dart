// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

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
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OrdersState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'OrdersState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements OrdersState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrdersFailure ordersFailure});

  $OrdersFailureCopyWith<$Res> get ordersFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == ordersFailure
          ? _value.ordersFailure
          : ordersFailure // ignore: cast_nullable_to_non_nullable
              as OrdersFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersFailureCopyWith<$Res> get ordersFailure {
    return $OrdersFailureCopyWith<$Res>(_value.ordersFailure, (value) {
      return _then(_value.copyWith(ordersFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.ordersFailure);

  @override
  final OrdersFailure ordersFailure;

  @override
  String toString() {
    return 'OrdersState.loadFailure(ordersFailure: $ordersFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.ordersFailure, ordersFailure) ||
                other.ordersFailure == ordersFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) {
    return loadFailure(ordersFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) {
    return loadFailure?.call(ordersFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(ordersFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OrdersState {
  const factory _LoadFailure(final OrdersFailure ordersFailure) =
      _$LoadFailureImpl;

  OrdersFailure get ordersFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadProductOrderssSuccessImplCopyWith<$Res> {
  factory _$$LoadProductOrderssSuccessImplCopyWith(
          _$LoadProductOrderssSuccessImpl value,
          $Res Function(_$LoadProductOrderssSuccessImpl) then) =
      __$$LoadProductOrderssSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Orders> orders});
}

/// @nodoc
class __$$LoadProductOrderssSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadProductOrderssSuccessImpl>
    implements _$$LoadProductOrderssSuccessImplCopyWith<$Res> {
  __$$LoadProductOrderssSuccessImplCopyWithImpl(
      _$LoadProductOrderssSuccessImpl _value,
      $Res Function(_$LoadProductOrderssSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$LoadProductOrderssSuccessImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>,
    ));
  }
}

/// @nodoc

class _$LoadProductOrderssSuccessImpl implements _LoadProductOrderssSuccess {
  const _$LoadProductOrderssSuccessImpl(final List<Orders> orders)
      : _orders = orders;

  final List<Orders> _orders;
  @override
  List<Orders> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.loadProductOrderssSuccess(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProductOrderssSuccessImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProductOrderssSuccessImplCopyWith<_$LoadProductOrderssSuccessImpl>
      get copyWith => __$$LoadProductOrderssSuccessImplCopyWithImpl<
          _$LoadProductOrderssSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) {
    return loadProductOrderssSuccess(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) {
    return loadProductOrderssSuccess?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadProductOrderssSuccess != null) {
      return loadProductOrderssSuccess(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) {
    return loadProductOrderssSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) {
    return loadProductOrderssSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadProductOrderssSuccess != null) {
      return loadProductOrderssSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadProductOrderssSuccess implements OrdersState {
  const factory _LoadProductOrderssSuccess(final List<Orders> orders) =
      _$LoadProductOrderssSuccessImpl;

  List<Orders> get orders;
  @JsonKey(ignore: true)
  _$$LoadProductOrderssSuccessImplCopyWith<_$LoadProductOrderssSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAdsProductsSuccessImplCopyWith<$Res> {
  factory _$$LoadAdsProductsSuccessImplCopyWith(
          _$LoadAdsProductsSuccessImpl value,
          $Res Function(_$LoadAdsProductsSuccessImpl) then) =
      __$$LoadAdsProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Orders> orders});
}

/// @nodoc
class __$$LoadAdsProductsSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadAdsProductsSuccessImpl>
    implements _$$LoadAdsProductsSuccessImplCopyWith<$Res> {
  __$$LoadAdsProductsSuccessImplCopyWithImpl(
      _$LoadAdsProductsSuccessImpl _value,
      $Res Function(_$LoadAdsProductsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$LoadAdsProductsSuccessImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>,
    ));
  }
}

/// @nodoc

class _$LoadAdsProductsSuccessImpl implements _LoadAdsProductsSuccess {
  const _$LoadAdsProductsSuccessImpl(final List<Orders> orders)
      : _orders = orders;

  final List<Orders> _orders;
  @override
  List<Orders> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.loadAdsOrderssSuccess(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAdsProductsSuccessImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAdsProductsSuccessImplCopyWith<_$LoadAdsProductsSuccessImpl>
      get copyWith => __$$LoadAdsProductsSuccessImplCopyWithImpl<
          _$LoadAdsProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) {
    return loadAdsOrderssSuccess(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) {
    return loadAdsOrderssSuccess?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadAdsOrderssSuccess != null) {
      return loadAdsOrderssSuccess(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) {
    return loadAdsOrderssSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) {
    return loadAdsOrderssSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadAdsOrderssSuccess != null) {
      return loadAdsOrderssSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAdsProductsSuccess implements OrdersState {
  const factory _LoadAdsProductsSuccess(final List<Orders> orders) =
      _$LoadAdsProductsSuccessImpl;

  List<Orders> get orders;
  @JsonKey(ignore: true)
  _$$LoadAdsProductsSuccessImplCopyWith<_$LoadAdsProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOrderStatusImplCopyWith<$Res> {
  factory _$$LoadOrderStatusImplCopyWith(_$LoadOrderStatusImpl value,
          $Res Function(_$LoadOrderStatusImpl) then) =
      __$$LoadOrderStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOrderStatusImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadOrderStatusImpl>
    implements _$$LoadOrderStatusImplCopyWith<$Res> {
  __$$LoadOrderStatusImplCopyWithImpl(
      _$LoadOrderStatusImpl _value, $Res Function(_$LoadOrderStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadOrderStatusImpl implements _LoadOrderStatus {
  const _$LoadOrderStatusImpl();

  @override
  String toString() {
    return 'OrdersState.loadOrderStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOrderStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(OrdersFailure ordersFailure) loadFailure,
    required TResult Function(List<Orders> orders) loadProductOrderssSuccess,
    required TResult Function(List<Orders> orders) loadAdsOrderssSuccess,
    required TResult Function() loadOrderStatus,
  }) {
    return loadOrderStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersFailure ordersFailure)? loadFailure,
    TResult? Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult? Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult? Function()? loadOrderStatus,
  }) {
    return loadOrderStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(OrdersFailure ordersFailure)? loadFailure,
    TResult Function(List<Orders> orders)? loadProductOrderssSuccess,
    TResult Function(List<Orders> orders)? loadAdsOrderssSuccess,
    TResult Function()? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadOrderStatus != null) {
      return loadOrderStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadProductOrderssSuccess value)
        loadProductOrderssSuccess,
    required TResult Function(_LoadAdsProductsSuccess value)
        loadAdsOrderssSuccess,
    required TResult Function(_LoadOrderStatus value) loadOrderStatus,
  }) {
    return loadOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult? Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult? Function(_LoadOrderStatus value)? loadOrderStatus,
  }) {
    return loadOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadProductOrderssSuccess value)?
        loadProductOrderssSuccess,
    TResult Function(_LoadAdsProductsSuccess value)? loadAdsOrderssSuccess,
    TResult Function(_LoadOrderStatus value)? loadOrderStatus,
    required TResult orElse(),
  }) {
    if (loadOrderStatus != null) {
      return loadOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _LoadOrderStatus implements OrdersState {
  const factory _LoadOrderStatus() = _$LoadOrderStatusImpl;
}
