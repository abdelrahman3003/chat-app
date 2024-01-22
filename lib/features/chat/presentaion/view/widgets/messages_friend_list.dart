import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/message_friend.dart';
import 'package:flutter/material.dart';

class MessagesFriendList extends StatelessWidget {
  const MessagesFriendList({
    super.key,
    required this.messages,
  });
  final List<Message> messages;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MessageFriend(message: messages[index]);
      },
    );
  }
}
