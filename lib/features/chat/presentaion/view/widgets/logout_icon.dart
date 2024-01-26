import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/navigate.dart';
import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutIcon extends StatelessWidget {
  const LogoutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          navigateToPage(context, RoutesApp.ksignin);
        },
        icon: const Icon(
          Icons.logout,
          color: Constant.kprimaryColor2,
          size: 26,
        ));
  }
}
