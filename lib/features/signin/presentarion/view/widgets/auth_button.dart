import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/widgets/customButton.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButtom(
        backgroundcolor: Constant.kprimaryColor2,
        textcolor: Colors.white,
        text: "Login",
        width: 120,
        borderRadius: BorderRadius.circular(30),
        onPressed: () {});
  }
}
