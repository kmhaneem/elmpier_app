import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/chat/message/message_failure.dart';
import 'package:frontend/domain/chat/message/message.dart';

part 'message_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _Initial;
  const factory MessageState.actionInProgress() = _ActionInProgress;
  const factory MessageState.sendSuccess() = _SendSuccess;
  const factory MessageState.actionFailure(MessageFailure messageFailure) = _ActionFailure;
  const factory MessageState.loaded(List<Message> messages) = _Loaded;
}

extension MessageStateX on MessageState {
  int get messagesCount {
    return this is _Loaded ? (this as _Loaded).messages.length : 0;
  }
}
