// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryPerson {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryPersonCopyWith<DeliveryPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPersonCopyWith<$Res> {
  factory $DeliveryPersonCopyWith(
          DeliveryPerson value, $Res Function(DeliveryPerson) then) =
      _$DeliveryPersonCopyWithImpl<$Res, DeliveryPerson>;
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class _$DeliveryPersonCopyWithImpl<$Res, $Val extends DeliveryPerson>
    implements $DeliveryPersonCopyWith<$Res> {
  _$DeliveryPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryPersonImplCopyWith<$Res>
    implements $DeliveryPersonCopyWith<$Res> {
  factory _$$DeliveryPersonImplCopyWith(_$DeliveryPersonImpl value,
          $Res Function(_$DeliveryPersonImpl) then) =
      __$$DeliveryPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class __$$DeliveryPersonImplCopyWithImpl<$Res>
    extends _$DeliveryPersonCopyWithImpl<$Res, _$DeliveryPersonImpl>
    implements _$$DeliveryPersonImplCopyWith<$Res> {
  __$$DeliveryPersonImplCopyWithImpl(
      _$DeliveryPersonImpl _value, $Res Function(_$DeliveryPersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$DeliveryPersonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeliveryPersonImpl implements _DeliveryPerson {
  const _$DeliveryPersonImpl({this.id, this.name, this.email});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'DeliveryPerson(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPersonImplCopyWith<_$DeliveryPersonImpl> get copyWith =>
      __$$DeliveryPersonImplCopyWithImpl<_$DeliveryPersonImpl>(
          this, _$identity);
}

abstract class _DeliveryPerson implements DeliveryPerson {
  const factory _DeliveryPerson(
      {final int? id,
      final String? name,
      final String? email}) = _$DeliveryPersonImpl;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryPersonImplCopyWith<_$DeliveryPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
