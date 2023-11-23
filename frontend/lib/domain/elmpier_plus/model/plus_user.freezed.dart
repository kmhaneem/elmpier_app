// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plus_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlusUser {
  bool get isPlusUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlusUserCopyWith<PlusUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlusUserCopyWith<$Res> {
  factory $PlusUserCopyWith(PlusUser value, $Res Function(PlusUser) then) =
      _$PlusUserCopyWithImpl<$Res, PlusUser>;
  @useResult
  $Res call({bool isPlusUser});
}

/// @nodoc
class _$PlusUserCopyWithImpl<$Res, $Val extends PlusUser>
    implements $PlusUserCopyWith<$Res> {
  _$PlusUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlusUser = null,
  }) {
    return _then(_value.copyWith(
      isPlusUser: null == isPlusUser
          ? _value.isPlusUser
          : isPlusUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlusUserImplCopyWith<$Res>
    implements $PlusUserCopyWith<$Res> {
  factory _$$PlusUserImplCopyWith(
          _$PlusUserImpl value, $Res Function(_$PlusUserImpl) then) =
      __$$PlusUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPlusUser});
}

/// @nodoc
class __$$PlusUserImplCopyWithImpl<$Res>
    extends _$PlusUserCopyWithImpl<$Res, _$PlusUserImpl>
    implements _$$PlusUserImplCopyWith<$Res> {
  __$$PlusUserImplCopyWithImpl(
      _$PlusUserImpl _value, $Res Function(_$PlusUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlusUser = null,
  }) {
    return _then(_$PlusUserImpl(
      isPlusUser: null == isPlusUser
          ? _value.isPlusUser
          : isPlusUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlusUserImpl implements _PlusUser {
  const _$PlusUserImpl({required this.isPlusUser});

  @override
  final bool isPlusUser;

  @override
  String toString() {
    return 'PlusUser(isPlusUser: $isPlusUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlusUserImpl &&
            (identical(other.isPlusUser, isPlusUser) ||
                other.isPlusUser == isPlusUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlusUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlusUserImplCopyWith<_$PlusUserImpl> get copyWith =>
      __$$PlusUserImplCopyWithImpl<_$PlusUserImpl>(this, _$identity);
}

abstract class _PlusUser implements PlusUser {
  const factory _PlusUser({required final bool isPlusUser}) = _$PlusUserImpl;

  @override
  bool get isPlusUser;
  @override
  @JsonKey(ignore: true)
  _$$PlusUserImplCopyWith<_$PlusUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
