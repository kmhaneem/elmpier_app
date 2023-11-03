// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFailureCopyWith<$Res> {
  factory $MessageFailureCopyWith(
          MessageFailure value, $Res Function(MessageFailure) then) =
      _$MessageFailureCopyWithImpl<$Res, MessageFailure>;
}

/// @nodoc
class _$MessageFailureCopyWithImpl<$Res, $Val extends MessageFailure>
    implements $MessageFailureCopyWith<$Res> {
  _$MessageFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnExpectedCopyWith<$Res> {
  factory _$$_UnExpectedCopyWith(
          _$_UnExpected value, $Res Function(_$_UnExpected) then) =
      __$$_UnExpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnExpectedCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res, _$_UnExpected>
    implements _$$_UnExpectedCopyWith<$Res> {
  __$$_UnExpectedCopyWithImpl(
      _$_UnExpected _value, $Res Function(_$_UnExpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnExpected implements _UnExpected {
  const _$_UnExpected();

  @override
  String toString() {
    return 'MessageFailure.unExpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnExpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return unExpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return unExpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unExpected != null) {
      return unExpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unExpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return unExpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unExpected != null) {
      return unExpected(this);
    }
    return orElse();
  }
}

abstract class _UnExpected implements MessageFailure {
  const factory _UnExpected() = _$_UnExpected;
}

/// @nodoc
abstract class _$$_NotFoundCopyWith<$Res> {
  factory _$$_NotFoundCopyWith(
          _$_NotFound value, $Res Function(_$_NotFound) then) =
      __$$_NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotFoundCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res, _$_NotFound>
    implements _$$_NotFoundCopyWith<$Res> {
  __$$_NotFoundCopyWithImpl(
      _$_NotFound _value, $Res Function(_$_NotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'MessageFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements MessageFailure {
  const factory _NotFound() = _$_NotFound;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'MessageFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unExpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unExpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unExpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
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
    required TResult Function(_UnExpected value) unExpected,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnExpected value)? unExpected,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnExpected value)? unExpected,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements MessageFailure {
  const factory _ServerError() = _$_ServerError;
}
