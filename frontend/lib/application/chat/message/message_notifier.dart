import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/chat/message/message_state.dart';
import 'package:frontend/domain/chat/message/message_failure.dart';
import 'package:frontend/domain/chat/message/i_message_repository.dart';

class MessageNotifier extends StateNotifier<MessageState> {
  final IMessageRepository _iMessageRepository;
  final String _userId;
  final String _otherUserId;

  MessageNotifier(this._iMessageRepository, this._userId, this._otherUserId)
      : super(const MessageState.initial()) {
    loadMessages(_userId, _otherUserId);
  }

  Future<void> sendMessage(
      String receiverId, String message, String email, int userId) async {
    Either<MessageFailure, Unit> failureOrSuccess;
    state = MessageState.actionInProgress();

    failureOrSuccess = await _iMessageRepository.sendMessage(
        receiverId, message, email, userId);

    failureOrSuccess.fold(
      (failure) => {state = MessageState.actionFailure(failure)},
      (_) async => {
        await loadMessages(_userId, _otherUserId),
        state = MessageState.sendSuccess(),
      },
    );
  }

  Future<void> loadMessages(String userId, String otherUserId) async {
    state = MessageState.actionInProgress();

    _iMessageRepository
        .getMessages(userId, otherUserId)
        .listen((failureOrMessages) {
      state = failureOrMessages.fold((failure) {
        return MessageState.actionFailure(failure);
      }, (messages) {
        return MessageState.loaded(messages);
      });
    }).onError((error) {
      state = MessageState.actionFailure(MessageFailure.serverError());
    });
  }
}
