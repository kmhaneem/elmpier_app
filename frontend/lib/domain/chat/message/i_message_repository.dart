import 'package:dartz/dartz.dart';
import 'package:frontend/domain/chat/message/message_failure.dart';

import 'message.dart';

abstract class IMessageRepository {
  Future<Either<MessageFailure, Unit>> sendMessage(String receiverId, String message, String email, int userId);
  Stream<Either<MessageFailure, List<Message>>> getMessages(String userId, String otherUserId);
}
