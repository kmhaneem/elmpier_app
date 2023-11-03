// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) => ChatDto(
      chatId: json['chatId'] as String,
      otherUserId: json['otherUserId'] as String,
      otherUserEmail: json['otherUserEmail'] as String,
      lastMessage:
          MessageDto.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatDtoToJson(ChatDto instance) => <String, dynamic>{
      'chatId': instance.chatId,
      'otherUserId': instance.otherUserId,
      'otherUserEmail': instance.otherUserEmail,
      'lastMessage': instance.lastMessage,
    };
