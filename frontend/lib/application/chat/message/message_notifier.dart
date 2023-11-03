import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/chat/message/message_state.dart';
import 'package:frontend/domain/chat/message/message_failure.dart';
import 'package:frontend/domain/chat/message/i_message_repository.dart';
import 'package:frontend/domain/chat/message/message.dart';

class MessageNotifier extends StateNotifier<MessageState> {
  final IMessageRepository _iMessageRepository;
  final String _userId;
  final String _otherUserId;

  MessageNotifier(this._iMessageRepository, this._userId, this._otherUserId)
      : super(const MessageState.initial()) {
    print("MessageNotifier: Constructor called");
    print("MessageNotifier: About to call loadMessages");
    loadMessages(_userId, _otherUserId);
  }

  Future<void> sendMessage(
      String receiverId, String message, String email, int userId) async {
    print("sendMessage: started");
    Either<MessageFailure, Unit> failureOrSuccess;
    state = MessageState.actionInProgress();

    failureOrSuccess = await _iMessageRepository.sendMessage(
        receiverId, message, email, userId);

    failureOrSuccess.fold(
      (failure) => {
        print("sendMessage: failure"),
        state = MessageState.actionFailure(failure)
      },
      (_) async => {
        print("sendMessage: success, loading messages"),
        // await loadMessages(_userId, _otherUserId).toList(),
        await loadMessages(_userId, _otherUserId),
        state = MessageState.sendSuccess(),
        print("sendMessage: messages loaded")
      },
    );
  }

  Future<void> loadMessages(String userId, String otherUserId) async {
    print("loadMessages: Entry point 1");
    state = MessageState.actionInProgress();

    _iMessageRepository
        .getMessages(userId, otherUserId)
        .listen((failureOrMessages) {
      state = failureOrMessages.fold((failure) {
        print("loadMessages: failure");
        return MessageState.actionFailure(failure);
      }, (messages) {
        print("loadMessages: success, messages count: ${messages.length}");
        return MessageState.loaded(messages);
      });
    }).onError((error) {
      print('Error in stream: $error');
      state = MessageState.actionFailure(MessageFailure.serverError());
    });
  }
}
