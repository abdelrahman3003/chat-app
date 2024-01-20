import 'package:chat_app1/features/signin/presentarion/view/widgets/authfield.dart';
import 'package:flutter/material.dart';

class AuthListField extends StatelessWidget {
  const AuthListField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthField(icon: Icons.person, text: "Username"),
        SizedBox(height: 20),
        AuthField(icon: Icons.password, text: "Password"),
      ],
    );
  }
}
