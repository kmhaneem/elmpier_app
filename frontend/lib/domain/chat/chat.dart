import 'package:freezed_annotation/freezed_annotation.dart';
import 'message/message.dart';
part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required String chatId,
    required String otherUserId,
    required String otherUserEmail,
    required Message lastMessage,
  }) = _Chat;
}
