// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDtoImpl _$$MessageDtoImplFromJson(Map<String, dynamic> json) =>
    _$MessageDtoImpl(
      senderId: json['senderId'] as String,
      senderEmail: json['senderEmail'] as String,
      receiverId: json['receiverId'] as String,
      content: json['content'] as String,
      timestamp:
          const TimestampConverter().fromJson(json['timestamp'] as Object),
    );

Map<String, dynamic> _$$MessageDtoImplToJson(_$MessageDtoImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderEmail': instance.senderEmail,
      'receiverId': instance.receiverId,
      'content': instance.content,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
