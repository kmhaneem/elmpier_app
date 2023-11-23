// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFailureCopyWith<$Res> {
  factory $PaymentFailureCopyWith(
          PaymentFailure value, $Res Function(PaymentFailure) then) =
      _$PaymentFailureCopyWithImpl<$Res, PaymentFailure>;
}

/// @nodoc
class _$PaymentFailureCopyWithImpl<$Res, $Val extends PaymentFailure>
    implements $PaymentFailureCopyWith<$Res> {
  _$PaymentFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$ServerErrorImpl>
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
    return 'PaymentFailure.serverError()';
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
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements PaymentFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$InvalidPaymentDetailsImplCopyWith<$Res> {
  factory _$$InvalidPaymentDetailsImplCopyWith(
          _$InvalidPaymentDetailsImpl value,
          $Res Function(_$InvalidPaymentDetailsImpl) then) =
      __$$InvalidPaymentDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidPaymentDetailsImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$InvalidPaymentDetailsImpl>
    implements _$$InvalidPaymentDetailsImplCopyWith<$Res> {
  __$$InvalidPaymentDetailsImplCopyWithImpl(_$InvalidPaymentDetailsImpl _value,
      $Res Function(_$InvalidPaymentDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidPaymentDetailsImpl implements _InvalidPaymentDetails {
  const _$InvalidPaymentDetailsImpl();

  @override
  String toString() {
    return 'PaymentFailure.invalidPaymentDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPaymentDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return invalidPaymentDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return invalidPaymentDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (invalidPaymentDetails != null) {
      return invalidPaymentDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return invalidPaymentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return invalidPaymentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (invalidPaymentDetails != null) {
      return invalidPaymentDetails(this);
    }
    return orElse();
  }
}

abstract class _InvalidPaymentDetails implements PaymentFailure {
  const factory _InvalidPaymentDetails() = _$InvalidPaymentDetailsImpl;
}

/// @nodoc
abstract class _$$InsufficientFundsImplCopyWith<$Res> {
  factory _$$InsufficientFundsImplCopyWith(_$InsufficientFundsImpl value,
          $Res Function(_$InsufficientFundsImpl) then) =
      __$$InsufficientFundsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsufficientFundsImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$InsufficientFundsImpl>
    implements _$$InsufficientFundsImplCopyWith<$Res> {
  __$$InsufficientFundsImplCopyWithImpl(_$InsufficientFundsImpl _value,
      $Res Function(_$InsufficientFundsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsufficientFundsImpl implements _InsufficientFunds {
  const _$InsufficientFundsImpl();

  @override
  String toString() {
    return 'PaymentFailure.insufficientFunds()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InsufficientFundsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return insufficientFunds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return insufficientFunds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (insufficientFunds != null) {
      return insufficientFunds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return insufficientFunds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return insufficientFunds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (insufficientFunds != null) {
      return insufficientFunds(this);
    }
    return orElse();
  }
}

abstract class _InsufficientFunds implements PaymentFailure {
  const factory _InsufficientFunds() = _$InsufficientFundsImpl;
}

/// @nodoc
abstract class _$$TransactionTimeoutImplCopyWith<$Res> {
  factory _$$TransactionTimeoutImplCopyWith(_$TransactionTimeoutImpl value,
          $Res Function(_$TransactionTimeoutImpl) then) =
      __$$TransactionTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionTimeoutImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$TransactionTimeoutImpl>
    implements _$$TransactionTimeoutImplCopyWith<$Res> {
  __$$TransactionTimeoutImplCopyWithImpl(_$TransactionTimeoutImpl _value,
      $Res Function(_$TransactionTimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionTimeoutImpl implements _TransactionTimeout {
  const _$TransactionTimeoutImpl();

  @override
  String toString() {
    return 'PaymentFailure.transactionTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return transactionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return transactionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (transactionTimeout != null) {
      return transactionTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return transactionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return transactionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (transactionTimeout != null) {
      return transactionTimeout(this);
    }
    return orElse();
  }
}

abstract class _TransactionTimeout implements PaymentFailure {
  const factory _TransactionTimeout() = _$TransactionTimeoutImpl;
}

/// @nodoc
abstract class _$$PaymentDeniedImplCopyWith<$Res> {
  factory _$$PaymentDeniedImplCopyWith(
          _$PaymentDeniedImpl value, $Res Function(_$PaymentDeniedImpl) then) =
      __$$PaymentDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentDeniedImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$PaymentDeniedImpl>
    implements _$$PaymentDeniedImplCopyWith<$Res> {
  __$$PaymentDeniedImplCopyWithImpl(
      _$PaymentDeniedImpl _value, $Res Function(_$PaymentDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentDeniedImpl implements _PaymentDenied {
  const _$PaymentDeniedImpl();

  @override
  String toString() {
    return 'PaymentFailure.paymentDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return paymentDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return paymentDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (paymentDenied != null) {
      return paymentDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return paymentDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return paymentDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (paymentDenied != null) {
      return paymentDenied(this);
    }
    return orElse();
  }
}

abstract class _PaymentDenied implements PaymentFailure {
  const factory _PaymentDenied() = _$PaymentDeniedImpl;
}

/// @nodoc
abstract class _$$PaymentLimitExceededImplCopyWith<$Res> {
  factory _$$PaymentLimitExceededImplCopyWith(_$PaymentLimitExceededImpl value,
          $Res Function(_$PaymentLimitExceededImpl) then) =
      __$$PaymentLimitExceededImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentLimitExceededImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$PaymentLimitExceededImpl>
    implements _$$PaymentLimitExceededImplCopyWith<$Res> {
  __$$PaymentLimitExceededImplCopyWithImpl(_$PaymentLimitExceededImpl _value,
      $Res Function(_$PaymentLimitExceededImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentLimitExceededImpl implements _PaymentLimitExceeded {
  const _$PaymentLimitExceededImpl();

  @override
  String toString() {
    return 'PaymentFailure.paymentLimitExceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLimitExceededImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return paymentLimitExceeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return paymentLimitExceeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (paymentLimitExceeded != null) {
      return paymentLimitExceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return paymentLimitExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return paymentLimitExceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (paymentLimitExceeded != null) {
      return paymentLimitExceeded(this);
    }
    return orElse();
  }
}

abstract class _PaymentLimitExceeded implements PaymentFailure {
  const factory _PaymentLimitExceeded() = _$PaymentLimitExceededImpl;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkErrorImpl implements _NetworkError {
  const _$NetworkErrorImpl();

  @override
  String toString() {
    return 'PaymentFailure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements PaymentFailure {
  const factory _NetworkError() = _$NetworkErrorImpl;
}

/// @nodoc
abstract class _$$InvalidMerchantDetailsImplCopyWith<$Res> {
  factory _$$InvalidMerchantDetailsImplCopyWith(
          _$InvalidMerchantDetailsImpl value,
          $Res Function(_$InvalidMerchantDetailsImpl) then) =
      __$$InvalidMerchantDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidMerchantDetailsImplCopyWithImpl<$Res>
    extends _$PaymentFailureCopyWithImpl<$Res, _$InvalidMerchantDetailsImpl>
    implements _$$InvalidMerchantDetailsImplCopyWith<$Res> {
  __$$InvalidMerchantDetailsImplCopyWithImpl(
      _$InvalidMerchantDetailsImpl _value,
      $Res Function(_$InvalidMerchantDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidMerchantDetailsImpl implements _InvalidMerchantDetails {
  const _$InvalidMerchantDetailsImpl();

  @override
  String toString() {
    return 'PaymentFailure.invalidMerchantDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidMerchantDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPaymentDetails,
    required TResult Function() insufficientFunds,
    required TResult Function() transactionTimeout,
    required TResult Function() paymentDenied,
    required TResult Function() paymentLimitExceeded,
    required TResult Function() networkError,
    required TResult Function() invalidMerchantDetails,
  }) {
    return invalidMerchantDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? invalidPaymentDetails,
    TResult? Function()? insufficientFunds,
    TResult? Function()? transactionTimeout,
    TResult? Function()? paymentDenied,
    TResult? Function()? paymentLimitExceeded,
    TResult? Function()? networkError,
    TResult? Function()? invalidMerchantDetails,
  }) {
    return invalidMerchantDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPaymentDetails,
    TResult Function()? insufficientFunds,
    TResult Function()? transactionTimeout,
    TResult Function()? paymentDenied,
    TResult Function()? paymentLimitExceeded,
    TResult Function()? networkError,
    TResult Function()? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (invalidMerchantDetails != null) {
      return invalidMerchantDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidPaymentDetails value)
        invalidPaymentDetails,
    required TResult Function(_InsufficientFunds value) insufficientFunds,
    required TResult Function(_TransactionTimeout value) transactionTimeout,
    required TResult Function(_PaymentDenied value) paymentDenied,
    required TResult Function(_PaymentLimitExceeded value) paymentLimitExceeded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_InvalidMerchantDetails value)
        invalidMerchantDetails,
  }) {
    return invalidMerchantDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult? Function(_InsufficientFunds value)? insufficientFunds,
    TResult? Function(_TransactionTimeout value)? transactionTimeout,
    TResult? Function(_PaymentDenied value)? paymentDenied,
    TResult? Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
  }) {
    return invalidMerchantDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidPaymentDetails value)? invalidPaymentDetails,
    TResult Function(_InsufficientFunds value)? insufficientFunds,
    TResult Function(_TransactionTimeout value)? transactionTimeout,
    TResult Function(_PaymentDenied value)? paymentDenied,
    TResult Function(_PaymentLimitExceeded value)? paymentLimitExceeded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_InvalidMerchantDetails value)? invalidMerchantDetails,
    required TResult orElse(),
  }) {
    if (invalidMerchantDetails != null) {
      return invalidMerchantDetails(this);
    }
    return orElse();
  }
}

abstract class _InvalidMerchantDetails implements PaymentFailure {
  const factory _InvalidMerchantDetails() = _$InvalidMerchantDetailsImpl;
}
