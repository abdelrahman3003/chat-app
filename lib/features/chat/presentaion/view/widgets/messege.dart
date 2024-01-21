import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:flutter/material.dart';

class messageUser extends StatelessWidget {
  const messageUser({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Constant.kprimaryColor1,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        child: Text(
          message.message!,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
