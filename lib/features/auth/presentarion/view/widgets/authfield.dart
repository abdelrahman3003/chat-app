import 'package:chat_app1/features/auth/presentarion/view/widgets/iconauth.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/textfiledauth.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.text,
    required this.icon,
    required this.onsave,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final void Function(String?) onsave;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      TextfieldAuth(
        onsave: onsave,
        text: text,
      ),
      Positioned(
        left: .5,
        top: -10,
        child: IconAuth(
          icon: icon,
          onTap: onTap,
        ),
      )
    ]);
  }
}
