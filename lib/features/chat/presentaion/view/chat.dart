import 'package:chat_app1/features/chat/presentaion/view/widgets/chat_body.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatBody(),
    );
  }
}
