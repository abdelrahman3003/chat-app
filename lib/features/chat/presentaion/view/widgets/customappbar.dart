import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/logo.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/chat_logo.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/logout_icon.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Container(
        color: const Color.fromARGB(255, 255, 252, 252),
        height: 50,
        width: double.infinity,
        child: const Row(
          children: [
            SizedBox(width: 10),
            ChatLogo(),
            Spacer(),
            LogoutIcon(),
          ],
        ),
      ),
    );
  }
}
