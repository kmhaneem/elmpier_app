// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdvertisementCondition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvertisementConditionCopyWith<AdvertisementCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementConditionCopyWith<$Res> {
  factory $AdvertisementConditionCopyWith(AdvertisementCondition value,
          $Res Function(AdvertisementCondition) then) =
      _$AdvertisementConditionCopyWithImpl<$Res, AdvertisementCondition>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AdvertisementConditionCopyWithImpl<$Res,
        $Val extends AdvertisementCondition>
    implements $AdvertisementConditionCopyWith<$Res> {
  _$AdvertisementConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementConditionImplCopyWith<$Res>
    implements $AdvertisementConditionCopyWith<$Res> {
  factory _$$AdvertisementConditionImplCopyWith(
          _$AdvertisementConditionImpl value,
          $Res Function(_$AdvertisementConditionImpl) then) =
      __$$AdvertisementConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AdvertisementConditionImplCopyWithImpl<$Res>
    extends _$AdvertisementConditionCopyWithImpl<$Res,
        _$AdvertisementConditionImpl>
    implements _$$AdvertisementConditionImplCopyWith<$Res> {
  __$$AdvertisementConditionImplCopyWithImpl(
      _$AdvertisementConditionImpl _value,
      $Res Function(_$AdvertisementConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AdvertisementConditionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdvertisementConditionImpl implements _AdvertisementCondition {
  const _$AdvertisementConditionImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AdvertisementCondition(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementConditionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementConditionImplCopyWith<_$AdvertisementConditionImpl>
      get copyWith => __$$AdvertisementConditionImplCopyWithImpl<
          _$AdvertisementConditionImpl>(this, _$identity);
}

abstract class _AdvertisementCondition implements AdvertisementCondition {
  const factory _AdvertisementCondition(
      {required final int id,
      required final String name}) = _$AdvertisementConditionImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementConditionImplCopyWith<_$AdvertisementConditionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
