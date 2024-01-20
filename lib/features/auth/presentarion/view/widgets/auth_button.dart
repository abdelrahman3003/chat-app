import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/widgets/customButton.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomButtom(
        backgroundcolor: Constant.kprimaryColor2,
        textcolor: Colors.white,
        text: text,
        width: 120,
        borderRadius: BorderRadius.circular(30),
        onPressed: onPressed);
  }
}
