// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

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
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UserState.initial()';
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
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
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
    extends _$UserStateCopyWithImpl<$Res, _$ActionInProgressImpl>
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
    return 'UserState.actionInProgress()';
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
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements UserState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> user});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoadedImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<User> user) : _user = user;

  final List<User> _user;
  @override
  List<User> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

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
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserState {
  const factory _Loaded(final List<User> user) = _$LoadedImpl;

  List<User> get user;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionFailureImplCopyWith<$Res> {
  factory _$$ActionFailureImplCopyWith(
          _$ActionFailureImpl value, $Res Function(_$ActionFailureImpl) then) =
      __$$ActionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFailure userFailure});

  $UserFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class __$$ActionFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ActionFailureImpl>
    implements _$$ActionFailureImplCopyWith<$Res> {
  __$$ActionFailureImplCopyWithImpl(
      _$ActionFailureImpl _value, $Res Function(_$ActionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userFailure = null,
  }) {
    return _then(_$ActionFailureImpl(
      null == userFailure
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFailureCopyWith<$Res> get userFailure {
    return $UserFailureCopyWith<$Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc

class _$ActionFailureImpl implements _ActionFailure {
  const _$ActionFailureImpl(this.userFailure);

  @override
  final UserFailure userFailure;

  @override
  String toString() {
    return 'UserState.actionFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionFailureImpl &&
            (identical(other.userFailure, userFailure) ||
                other.userFailure == userFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userFailure);

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
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) {
    return actionFailure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) {
    return actionFailure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(userFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements UserState {
  const factory _ActionFailure(final UserFailure userFailure) =
      _$ActionFailureImpl;

  UserFailure get userFailure;
  @JsonKey(ignore: true)
  _$$ActionFailureImplCopyWith<_$ActionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NormalUsersLoadedImplCopyWith<$Res> {
  factory _$$NormalUsersLoadedImplCopyWith(_$NormalUsersLoadedImpl value,
          $Res Function(_$NormalUsersLoadedImpl) then) =
      __$$NormalUsersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> user});
}

/// @nodoc
class __$$NormalUsersLoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$NormalUsersLoadedImpl>
    implements _$$NormalUsersLoadedImplCopyWith<$Res> {
  __$$NormalUsersLoadedImplCopyWithImpl(_$NormalUsersLoadedImpl _value,
      $Res Function(_$NormalUsersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$NormalUsersLoadedImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$NormalUsersLoadedImpl implements _NormalUsersLoaded {
  const _$NormalUsersLoadedImpl(final List<User> user) : _user = user;

  final List<User> _user;
  @override
  List<User> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UserState.normalUsersLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NormalUsersLoadedImpl &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalUsersLoadedImplCopyWith<_$NormalUsersLoadedImpl> get copyWith =>
      __$$NormalUsersLoadedImplCopyWithImpl<_$NormalUsersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) {
    return normalUsersLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) {
    return normalUsersLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (normalUsersLoaded != null) {
      return normalUsersLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) {
    return normalUsersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) {
    return normalUsersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (normalUsersLoaded != null) {
      return normalUsersLoaded(this);
    }
    return orElse();
  }
}

abstract class _NormalUsersLoaded implements UserState {
  const factory _NormalUsersLoaded(final List<User> user) =
      _$NormalUsersLoadedImpl;

  List<User> get user;
  @JsonKey(ignore: true)
  _$$NormalUsersLoadedImplCopyWith<_$NormalUsersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlusUsersLoadedImplCopyWith<$Res> {
  factory _$$PlusUsersLoadedImplCopyWith(_$PlusUsersLoadedImpl value,
          $Res Function(_$PlusUsersLoadedImpl) then) =
      __$$PlusUsersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> user});
}

/// @nodoc
class __$$PlusUsersLoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$PlusUsersLoadedImpl>
    implements _$$PlusUsersLoadedImplCopyWith<$Res> {
  __$$PlusUsersLoadedImplCopyWithImpl(
      _$PlusUsersLoadedImpl _value, $Res Function(_$PlusUsersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$PlusUsersLoadedImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$PlusUsersLoadedImpl implements _PlusUsersLoaded {
  const _$PlusUsersLoadedImpl(final List<User> user) : _user = user;

  final List<User> _user;
  @override
  List<User> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UserState.plusUsersLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlusUsersLoadedImpl &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlusUsersLoadedImplCopyWith<_$PlusUsersLoadedImpl> get copyWith =>
      __$$PlusUsersLoadedImplCopyWithImpl<_$PlusUsersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) actionFailure,
    required TResult Function(List<User> user) normalUsersLoaded,
    required TResult Function(List<User> user) plusUsersLoaded,
  }) {
    return plusUsersLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(List<User> user)? loaded,
    TResult? Function(UserFailure userFailure)? actionFailure,
    TResult? Function(List<User> user)? normalUsersLoaded,
    TResult? Function(List<User> user)? plusUsersLoaded,
  }) {
    return plusUsersLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? actionFailure,
    TResult Function(List<User> user)? normalUsersLoaded,
    TResult Function(List<User> user)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (plusUsersLoaded != null) {
      return plusUsersLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_NormalUsersLoaded value) normalUsersLoaded,
    required TResult Function(_PlusUsersLoaded value) plusUsersLoaded,
  }) {
    return plusUsersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult? Function(_PlusUsersLoaded value)? plusUsersLoaded,
  }) {
    return plusUsersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_NormalUsersLoaded value)? normalUsersLoaded,
    TResult Function(_PlusUsersLoaded value)? plusUsersLoaded,
    required TResult orElse(),
  }) {
    if (plusUsersLoaded != null) {
      return plusUsersLoaded(this);
    }
    return orElse();
  }
}

abstract class _PlusUsersLoaded implements UserState {
  const factory _PlusUsersLoaded(final List<User> user) = _$PlusUsersLoadedImpl;

  List<User> get user;
  @JsonKey(ignore: true)
  _$$PlusUsersLoadedImplCopyWith<_$PlusUsersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
