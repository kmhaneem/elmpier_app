import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/chat/message/message.dart';
part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const MessageDto._();

  const factory MessageDto({
    required String senderId,
    required String senderEmail,
    required String receiverId,
    required String content,
    @TimestampConverter() required Timestamp timestamp,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

      factory MessageDto.fromDomain(Message message) {
    return MessageDto(
      senderId: message.senderId,
      senderEmail: message.senderEmail,
      receiverId: message.receiverId,
      content: message.content,
      timestamp: message.timestamp,
    );
  }

  Message toDomain() {
    return Message(
      senderId: senderId,
      senderEmail: senderEmail,
      receiverId: receiverId,
      content: content,
      timestamp: timestamp,
    );
  }
}

class TimestampConverter implements JsonConverter<Timestamp, Object> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object timestamp) {
    if (timestamp is Map) {
      int seconds = (timestamp['_seconds'] is int) ? timestamp['_seconds'] : (timestamp['_seconds'] as num).toInt();
      int nanoseconds = (timestamp['_nanoseconds'] is int) ? timestamp['_nanoseconds'] : (timestamp['_nanoseconds'] as num).toInt();

      return Timestamp.fromMicrosecondsSinceEpoch(seconds * 1000000 + nanoseconds ~/ 1000);
    } else {
      throw FormatException("Unknown timestamp format");
    }
  }

  @override
  Object toJson(Timestamp timestamp) => {
        '_seconds': timestamp.seconds,
        '_nanoseconds': timestamp.nanoseconds,
      };
}

