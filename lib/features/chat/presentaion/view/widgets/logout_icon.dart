import 'package:chat_app1/constants.dart';
import 'package:flutter/material.dart';

class LogoutIcon extends StatelessWidget {
  const LogoutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.logout,
          color: Constant.kprimaryColor2,
          size: 26,
        ));
  }
}
