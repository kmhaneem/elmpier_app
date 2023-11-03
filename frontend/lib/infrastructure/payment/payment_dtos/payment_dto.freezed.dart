// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDto {
  bool get sandbox => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_id")
  String get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_secret")
  String get merchantSecret => throw _privateConstructorUsedError;
  @JsonKey(name: "notify_url")
  String get notifyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  String get items => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_city")
  String get deliveryCity => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_country")
  String get deliveryCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDtoCopyWith<PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res, PaymentDto>;
  @useResult
  $Res call(
      {bool sandbox,
      @JsonKey(name: "merchant_id") String merchantId,
      @JsonKey(name: "merchant_secret") String merchantSecret,
      @JsonKey(name: "notify_url") String notifyUrl,
      @JsonKey(name: "order_id") String orderId,
      String items,
      double amount,
      String currency,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      String email,
      String phone,
      String address,
      String city,
      String country,
      @JsonKey(name: "delivery_address") String deliveryAddress,
      @JsonKey(name: "delivery_city") String deliveryCity,
      @JsonKey(name: "delivery_country") String deliveryCountry});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res, $Val extends PaymentDto>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sandbox = null,
    Object? merchantId = null,
    Object? merchantSecret = null,
    Object? notifyUrl = null,
    Object? orderId = null,
    Object? items = null,
    Object? amount = null,
    Object? currency = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? city = null,
    Object? country = null,
    Object? deliveryAddress = null,
    Object? deliveryCity = null,
    Object? deliveryCountry = null,
  }) {
    return _then(_value.copyWith(
      sandbox: null == sandbox
          ? _value.sandbox
          : sandbox // ignore: cast_nullable_to_non_nullable
              as bool,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantSecret: null == merchantSecret
          ? _value.merchantSecret
          : merchantSecret // ignore: cast_nullable_to_non_nullable
              as String,
      notifyUrl: null == notifyUrl
          ? _value.notifyUrl
          : notifyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCity: null == deliveryCity
          ? _value.deliveryCity
          : deliveryCity // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCountry: null == deliveryCountry
          ? _value.deliveryCountry
          : deliveryCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDtoCopyWith<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  factory _$$_PaymentDtoCopyWith(
          _$_PaymentDto value, $Res Function(_$_PaymentDto) then) =
      __$$_PaymentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool sandbox,
      @JsonKey(name: "merchant_id") String merchantId,
      @JsonKey(name: "merchant_secret") String merchantSecret,
      @JsonKey(name: "notify_url") String notifyUrl,
      @JsonKey(name: "order_id") String orderId,
      String items,
      double amount,
      String currency,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      String email,
      String phone,
      String address,
      String city,
      String country,
      @JsonKey(name: "delivery_address") String deliveryAddress,
      @JsonKey(name: "delivery_city") String deliveryCity,
      @JsonKey(name: "delivery_country") String deliveryCountry});
}

/// @nodoc
class __$$_PaymentDtoCopyWithImpl<$Res>
    extends _$PaymentDtoCopyWithImpl<$Res, _$_PaymentDto>
    implements _$$_PaymentDtoCopyWith<$Res> {
  __$$_PaymentDtoCopyWithImpl(
      _$_PaymentDto _value, $Res Function(_$_PaymentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sandbox = null,
    Object? merchantId = null,
    Object? merchantSecret = null,
    Object? notifyUrl = null,
    Object? orderId = null,
    Object? items = null,
    Object? amount = null,
    Object? currency = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? city = null,
    Object? country = null,
    Object? deliveryAddress = null,
    Object? deliveryCity = null,
    Object? deliveryCountry = null,
  }) {
    return _then(_$_PaymentDto(
      sandbox: null == sandbox
          ? _value.sandbox
          : sandbox // ignore: cast_nullable_to_non_nullable
              as bool,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantSecret: null == merchantSecret
          ? _value.merchantSecret
          : merchantSecret // ignore: cast_nullable_to_non_nullable
              as String,
      notifyUrl: null == notifyUrl
          ? _value.notifyUrl
          : notifyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCity: null == deliveryCity
          ? _value.deliveryCity
          : deliveryCity // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCountry: null == deliveryCountry
          ? _value.deliveryCountry
          : deliveryCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDto extends _PaymentDto {
  const _$_PaymentDto(
      {required this.sandbox,
      @JsonKey(name: "merchant_id") required this.merchantId,
      @JsonKey(name: "merchant_secret") required this.merchantSecret,
      @JsonKey(name: "notify_url") required this.notifyUrl,
      @JsonKey(name: "order_id") required this.orderId,
      required this.items,
      required this.amount,
      required this.currency,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      required this.email,
      required this.phone,
      required this.address,
      required this.city,
      required this.country,
      @JsonKey(name: "delivery_address") required this.deliveryAddress,
      @JsonKey(name: "delivery_city") required this.deliveryCity,
      @JsonKey(name: "delivery_country") required this.deliveryCountry})
      : super._();

  factory _$_PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDtoFromJson(json);

  @override
  final bool sandbox;
  @override
  @JsonKey(name: "merchant_id")
  final String merchantId;
  @override
  @JsonKey(name: "merchant_secret")
  final String merchantSecret;
  @override
  @JsonKey(name: "notify_url")
  final String notifyUrl;
  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  final String items;
  @override
  final double amount;
  @override
  final String currency;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String city;
  @override
  final String country;
  @override
  @JsonKey(name: "delivery_address")
  final String deliveryAddress;
  @override
  @JsonKey(name: "delivery_city")
  final String deliveryCity;
  @override
  @JsonKey(name: "delivery_country")
  final String deliveryCountry;

  @override
  String toString() {
    return 'PaymentDto(sandbox: $sandbox, merchantId: $merchantId, merchantSecret: $merchantSecret, notifyUrl: $notifyUrl, orderId: $orderId, items: $items, amount: $amount, currency: $currency, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, address: $address, city: $city, country: $country, deliveryAddress: $deliveryAddress, deliveryCity: $deliveryCity, deliveryCountry: $deliveryCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDto &&
            (identical(other.sandbox, sandbox) || other.sandbox == sandbox) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantSecret, merchantSecret) ||
                other.merchantSecret == merchantSecret) &&
            (identical(other.notifyUrl, notifyUrl) ||
                other.notifyUrl == notifyUrl) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.deliveryCity, deliveryCity) ||
                other.deliveryCity == deliveryCity) &&
            (identical(other.deliveryCountry, deliveryCountry) ||
                other.deliveryCountry == deliveryCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sandbox,
      merchantId,
      merchantSecret,
      notifyUrl,
      orderId,
      items,
      amount,
      currency,
      firstName,
      lastName,
      email,
      phone,
      address,
      city,
      country,
      deliveryAddress,
      deliveryCity,
      deliveryCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      __$$_PaymentDtoCopyWithImpl<_$_PaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDtoToJson(
      this,
    );
  }
}

abstract class _PaymentDto extends PaymentDto {
  const factory _PaymentDto(
      {required final bool sandbox,
      @JsonKey(name: "merchant_id")
          required final String merchantId,
      @JsonKey(name: "merchant_secret")
          required final String merchantSecret,
      @JsonKey(name: "notify_url")
          required final String notifyUrl,
      @JsonKey(name: "order_id")
          required final String orderId,
      required final String items,
      required final double amount,
      required final String currency,
      @JsonKey(name: "first_name")
          required final String firstName,
      @JsonKey(name: "last_name")
          required final String lastName,
      required final String email,
      required final String phone,
      required final String address,
      required final String city,
      required final String country,
      @JsonKey(name: "delivery_address")
          required final String deliveryAddress,
      @JsonKey(name: "delivery_city")
          required final String deliveryCity,
      @JsonKey(name: "delivery_country")
          required final String deliveryCountry}) = _$_PaymentDto;
  const _PaymentDto._() : super._();

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDto.fromJson;

  @override
  bool get sandbox;
  @override
  @JsonKey(name: "merchant_id")
  String get merchantId;
  @override
  @JsonKey(name: "merchant_secret")
  String get merchantSecret;
  @override
  @JsonKey(name: "notify_url")
  String get notifyUrl;
  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  String get items;
  @override
  double get amount;
  @override
  String get currency;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get address;
  @override
  String get city;
  @override
  String get country;
  @override
  @JsonKey(name: "delivery_address")
  String get deliveryAddress;
  @override
  @JsonKey(name: "delivery_city")
  String get deliveryCity;
  @override
  @JsonKey(name: "delivery_country")
  String get deliveryCountry;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
