// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatDto {
  String get chatId => throw _privateConstructorUsedError;
  String get otherUserId => throw _privateConstructorUsedError;
  String get otherUserEmail => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
  MessageDto get lastMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatDtoCopyWith<ChatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDtoCopyWith<$Res> {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) then) =
      _$ChatDtoCopyWithImpl<$Res, ChatDto>;
  @useResult
  $Res call(
      {String chatId,
      String otherUserId,
      String otherUserEmail,
      @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
      MessageDto lastMessage});

  $MessageDtoCopyWith<$Res> get lastMessage;
}

/// @nodoc
class _$ChatDtoCopyWithImpl<$Res, $Val extends ChatDto>
    implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? otherUserId = null,
    Object? otherUserEmail = null,
    Object? lastMessage = null,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserId: null == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserEmail: null == otherUserEmail
          ? _value.otherUserEmail
          : otherUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageDtoCopyWith<$Res> get lastMessage {
    return $MessageDtoCopyWith<$Res>(_value.lastMessage, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatDtoImplCopyWith<$Res> implements $ChatDtoCopyWith<$Res> {
  factory _$$ChatDtoImplCopyWith(
          _$ChatDtoImpl value, $Res Function(_$ChatDtoImpl) then) =
      __$$ChatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatId,
      String otherUserId,
      String otherUserEmail,
      @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
      MessageDto lastMessage});

  @override
  $MessageDtoCopyWith<$Res> get lastMessage;
}

/// @nodoc
class __$$ChatDtoImplCopyWithImpl<$Res>
    extends _$ChatDtoCopyWithImpl<$Res, _$ChatDtoImpl>
    implements _$$ChatDtoImplCopyWith<$Res> {
  __$$ChatDtoImplCopyWithImpl(
      _$ChatDtoImpl _value, $Res Function(_$ChatDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? otherUserId = null,
    Object? otherUserEmail = null,
    Object? lastMessage = null,
  }) {
    return _then(_$ChatDtoImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserId: null == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserEmail: null == otherUserEmail
          ? _value.otherUserEmail
          : otherUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageDto,
    ));
  }
}

/// @nodoc

class _$ChatDtoImpl extends _ChatDto {
  const _$ChatDtoImpl(
      {required this.chatId,
      required this.otherUserId,
      required this.otherUserEmail,
      @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
      required this.lastMessage})
      : super._();

  @override
  final String chatId;
  @override
  final String otherUserId;
  @override
  final String otherUserEmail;
  @override
  @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
  final MessageDto lastMessage;

  @override
  String toString() {
    return 'ChatDto(chatId: $chatId, otherUserId: $otherUserId, otherUserEmail: $otherUserEmail, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDtoImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.otherUserId, otherUserId) ||
                other.otherUserId == otherUserId) &&
            (identical(other.otherUserEmail, otherUserEmail) ||
                other.otherUserEmail == otherUserEmail) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatId, otherUserId, otherUserEmail, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDtoImplCopyWith<_$ChatDtoImpl> get copyWith =>
      __$$ChatDtoImplCopyWithImpl<_$ChatDtoImpl>(this, _$identity);
}

abstract class _ChatDto extends ChatDto {
  const factory _ChatDto(
      {required final String chatId,
      required final String otherUserId,
      required final String otherUserEmail,
      @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
      required final MessageDto lastMessage}) = _$ChatDtoImpl;
  const _ChatDto._() : super._();

  @override
  String get chatId;
  @override
  String get otherUserId;
  @override
  String get otherUserEmail;
  @override
  @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
  MessageDto get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$ChatDtoImplCopyWith<_$ChatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
