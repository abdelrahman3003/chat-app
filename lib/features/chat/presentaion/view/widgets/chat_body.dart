import 'package:chat_app1/features/chat/presentaion/view/widgets/formtext.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/message_friend.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messege.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MessageFriend(),
          MessageUser(),
          SizedBox(height: 3),
          TextFormBody(),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
