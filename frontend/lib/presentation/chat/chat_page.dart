import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

import '../../application/chat/message/message_state.dart';
import '../../domain/chat/message/message.dart';
import '../../shared/providers.dart';

class ChatPage extends ConsumerStatefulWidget {
  final String userId;
  final String otherUserId;
  final String email;

  ChatPage({
    Key? key,
    required this.otherUserId,
    required this.userId,
    required this.email,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _scrollToBottom() {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Widget _buildMessages(List<Message> messages, String userId) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final isSentByMe = message.senderId == userId;

        return Align(
          alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(message.content),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final messageState = ref.watch(
        messageNotifierProvider(Tuple2(widget.userId, widget.otherUserId)));
    ref.listen<MessageState>(
        messageNotifierProvider(Tuple2(widget.userId, widget.otherUserId)),
        (_, current) {
      current.maybeWhen(
        loaded: (messages) {
          _scrollToBottom();
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Chat with ${widget.otherUserId}"),
      ),
      body: Column(
        children: [
          Expanded(
            child: messageState.when(
              initial: () => Center(child: CircularProgressIndicator()),
              actionInProgress: () =>
                  Center(child: CircularProgressIndicator()),
              loaded: (messages) {
                List<Message> sortedMessages = List.from(messages);
                sortedMessages.sort((a, b) =>
                    a.timestamp.seconds.compareTo(b.timestamp.seconds));
                return _buildMessages(sortedMessages, widget.userId);
              },
              actionFailure: (failure) =>
                  Center(child: Text("Error occurred: ${failure}")),
              sendSuccess: () => Center(child: CircularProgressIndicator()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_messageController.text.isNotEmpty) {
                      ref
                          .read(messageNotifierProvider(
                                  Tuple2(widget.userId, widget.otherUserId))
                              .notifier)
                          .sendMessage(
                              widget.otherUserId,
                              _messageController.text,
                              widget.email,
                              int.parse(widget.userId));
                      _messageController.clear();
                      _scrollToBottom();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}