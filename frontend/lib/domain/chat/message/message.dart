
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String senderId,
    required String senderEmail,
    required String receiverId,
    required String content,
    required Timestamp timestamp
  }) = _Message;
}