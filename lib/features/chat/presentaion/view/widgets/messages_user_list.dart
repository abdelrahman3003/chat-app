import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/message_friend.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messege.dart';
import 'package:flutter/material.dart';

class MessageUserList extends StatelessWidget {
  const MessageUserList({
    super.key,
    required this.messages,
    required this.id,
  });
  final List<Message> messages;
  final String id;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return messages[index].id == id
            ? MessageUser(message: messages[index].message)
            : MessageFriend(
                message: messages[index].message,
              );
      },
    );
  }
}
