import 'package:chat_app1/features/chat/presentaion/view/widgets/chat_body.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({
    super.key,
    required this.email,
  });
  final String email;
  @override
  Widget build(BuildContext context) {
    print("========= email is $email");
    return Scaffold(
      body: ChatBody(email: email),
    );
  }
}
