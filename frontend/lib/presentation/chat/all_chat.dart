import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import '../../shared/providers.dart';

class AllChatPage extends ConsumerWidget {
  final String userId;

  AllChatPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatAsyncValue = ref.watch(allChatProvider(userId));
    String _extractNameFromEmail(String email) {
      return email.split('@').first;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: chatAsyncValue.when(
          data: (chats) {
            if (chats.isEmpty) {
              return Center(
                  child: Text("No chats yet.",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)));
            } else {
              return ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          AutoRouter.of(context).push(
                            ChatRoute(
                              otherUserId: chat.otherUserId,
                              userId: userId,
                              email: chat.otherUserEmail,
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(_extractNameFromEmail(chat.otherUserEmail),
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(chat.lastMessage.content),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
              child: Text("Error occurred: $error",
                  style: TextStyle(color: Colors.red, fontSize: 16))),
        ),
      ),
    );
  }
}
