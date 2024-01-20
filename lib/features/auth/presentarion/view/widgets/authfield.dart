import 'package:chat_app1/features/auth/presentarion/view/widgets/iconauth.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/textfiledauth.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      TextfieldAuth(
        text: text,
      ),
      Positioned(
        left: .5,
        top: -10,
        child: IconAuth(
          icon: icon,
        ),
      )
    ]);
  }
}
