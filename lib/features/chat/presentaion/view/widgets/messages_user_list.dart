import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messege.dart';
import 'package:flutter/material.dart';

class MessageUserList extends StatelessWidget {
  const MessageUserList({
    super.key,
    required this.messages,
  });
  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MessageUser(message: messages[index]);
      },
    );
  }
}
