import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/models/message.dart';
import 'package:flutter/material.dart';

class messageUser extends StatelessWidget {
  const messageUser({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kprimaryColor,
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

class messageFriend extends StatelessWidget {
  const messageFriend({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xff006D84),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        child: Text(
          message.message!,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
