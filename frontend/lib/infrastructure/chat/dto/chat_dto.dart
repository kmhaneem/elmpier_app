import 'package:freezed_annotation/freezed_annotation.dart';

import '../message/dto/message_dto.dart';
part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

@JsonSerializable()
@freezed
class ChatDto with _$ChatDto {
  const ChatDto._();

  const factory ChatDto({
    required String chatId,
    required String otherUserId,
    required String otherUserEmail,
    @JsonKey(fromJson: _messageDtoFromJson, toJson: _messageDtoToJson)
    required MessageDto lastMessage,
  }) = _ChatDto;

  static MessageDto _messageDtoFromJson(Map<String, dynamic> json) => MessageDto.fromJson(json);
  static Map<String, dynamic> _messageDtoToJson(MessageDto message) => message.toJson();
}
