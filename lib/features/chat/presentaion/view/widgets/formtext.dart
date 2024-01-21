import 'package:chat_app1/features/auth/presentarion/view/widgets/iconauth.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/textformfiledchat.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(clipBehavior: Clip.none, children: [
      TextFormfieldChat(),
      Positioned(
        right: .5,
        top: -10,
        child: IconAuth(
          icon: Icons.send,
        ),
      )
    ]);
  }
}
