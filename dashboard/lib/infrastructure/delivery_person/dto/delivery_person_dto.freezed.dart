// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_person_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryPersonDto _$DeliveryPersonDtoFromJson(Map<String, dynamic> json) {
  return _DeliveryPersonDto.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPersonDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPersonDtoCopyWith<DeliveryPersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPersonDtoCopyWith<$Res> {
  factory $DeliveryPersonDtoCopyWith(
          DeliveryPersonDto value, $Res Function(DeliveryPersonDto) then) =
      _$DeliveryPersonDtoCopyWithImpl<$Res, DeliveryPersonDto>;
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class _$DeliveryPersonDtoCopyWithImpl<$Res, $Val extends DeliveryPersonDto>
    implements $DeliveryPersonDtoCopyWith<$Res> {
  _$DeliveryPersonDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$DeliveryPersonDtoImplCopyWith<$Res>
    implements $DeliveryPersonDtoCopyWith<$Res> {
  factory _$$DeliveryPersonDtoImplCopyWith(_$DeliveryPersonDtoImpl value,
          $Res Function(_$DeliveryPersonDtoImpl) then) =
      __$$DeliveryPersonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class __$$DeliveryPersonDtoImplCopyWithImpl<$Res>
    extends _$DeliveryPersonDtoCopyWithImpl<$Res, _$DeliveryPersonDtoImpl>
    implements _$$DeliveryPersonDtoImplCopyWith<$Res> {
  __$$DeliveryPersonDtoImplCopyWithImpl(_$DeliveryPersonDtoImpl _value,
      $Res Function(_$DeliveryPersonDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$DeliveryPersonDtoImpl(
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
@JsonSerializable()
class _$DeliveryPersonDtoImpl extends _DeliveryPersonDto {
  const _$DeliveryPersonDtoImpl({this.id, this.name, this.email}) : super._();

  factory _$DeliveryPersonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPersonDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'DeliveryPersonDto(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPersonDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPersonDtoImplCopyWith<_$DeliveryPersonDtoImpl> get copyWith =>
      __$$DeliveryPersonDtoImplCopyWithImpl<_$DeliveryPersonDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPersonDtoImplToJson(
      this,
    );
  }
}

abstract class _DeliveryPersonDto extends DeliveryPersonDto {
  const factory _DeliveryPersonDto(
      {final int? id,
      final String? name,
      final String? email}) = _$DeliveryPersonDtoImpl;
  const _DeliveryPersonDto._() : super._();

  factory _DeliveryPersonDto.fromJson(Map<String, dynamic> json) =
      _$DeliveryPersonDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryPersonDtoImplCopyWith<_$DeliveryPersonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
