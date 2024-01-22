import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:flutter/material.dart';

class MessageUser extends StatelessWidget {
  const MessageUser({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.15),
              spreadRadius: .3,
              blurRadius: .3,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Constant.kprimaryColor2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Text(
            message,
            style: Styles.textStyle18.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
