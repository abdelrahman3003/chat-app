import 'package:chat_app1/constant.dart/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormfieldChat extends StatelessWidget {
  TextFormfieldChat(
      {super.key,
      required this.onSubmitted,
      this.onPressed,
      required this.controller});
  Function(String)? onSubmitted;
  final VoidCallback? onPressed;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onSubmitted,
      decoration: InputDecoration(
        hintText: "Send Messege",
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          color: kprimaryColor,
          onPressed: onPressed,
        ),
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: kprimaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: kprimaryColor)),
      ),
    );
  }
}
