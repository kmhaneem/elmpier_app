import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frontend/domain/chat/message/message.dart';
import 'package:frontend/domain/chat/message/message_failure.dart';
import 'package:frontend/infrastructure/chat/message/dto/message_dto.dart';

import '../../../domain/chat/message/i_message_repository.dart';

class MessageRepository implements IMessageRepository {
  final FirebaseFirestore _fireStore;

  MessageRepository(this._fireStore);

  Future<Either<MessageFailure, Unit>> sendMessage(
    String receiverId, String message, String email, int userId) async {
  try {
    final currentUserId = userId.toString();
    final Timestamp timestamp = Timestamp.now();

    Message newMessage = Message(
      senderId: currentUserId,
      senderEmail: email,
      receiverId: receiverId,
      timestamp: timestamp,
      content: message,
    );

    MessageDto newMessageDto = MessageDto.fromDomain(newMessage);

    List<String> ids = [currentUserId, receiverId];
    ids.sort();
    String chatRoomId = ids.join("_");

    final chatRoomDoc =
        await _fireStore.collection('chat_rooms').doc(chatRoomId).get();
    if (!chatRoomDoc.exists) {
      await _fireStore.collection('chat_rooms').doc(chatRoomId).set({
        'participants': ids,
      });
    }

    await _fireStore
        .collection('chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .add(newMessageDto.toJson());

    await _fireStore.collection('chat_rooms').doc(chatRoomId).update({
      'lastMessage': {
        'content': message,
        'timestamp': timestamp,
        'senderId': currentUserId,
        'receiverId': receiverId,
        'senderEmail': email,
      }
    });

    return right(unit);
  } catch (e) {
    return left(const MessageFailure.serverError());
  }
}

  @override
  Stream<Either<MessageFailure, List<Message>>> getMessages(
      String userId, String otherUserId) {
    print("getMessages: fetching messages");
    List<String> ids = [userId, otherUserId];
    ids.sort();
    String chatRoomId = ids.join("_");

    final StreamController<Either<MessageFailure, List<Message>>> controller =
        StreamController();

    _fireStore
        .collection('chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .listen(
      (querySnapshot) {
        print("getMessages: received data from Firestore");
        try {
          final messages = querySnapshot.docs
              .map((doc) =>
                  MessageDto.fromJson(doc.data() as Map<String, dynamic>)
                      .toDomain())
              .toList();
          controller.add(right(messages));
        } catch (e) {
          controller.add(left(const MessageFailure.serverError()));
        }
      },
      onError: (error) {
        print("getMessages: error -> $error");
        controller.add(left(const MessageFailure.serverError()));
      },
      onDone: controller.close,
    );

    print("CURRENT USER ID from GM $userId");
    print("RECEIVER ID from GM $otherUserId");

    return controller.stream;
  }
}
