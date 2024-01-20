import 'package:chat_app1/features/auth/presentarion/view/widgets/authfield.dart';
import 'package:flutter/material.dart';

class SignupSectionFields extends StatelessWidget {
  const SignupSectionFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthField(icon: Icons.person, text: "Username"),
        SizedBox(height: 20),
        AuthField(icon: Icons.email, text: "ُEmail"),
        SizedBox(height: 20),
        AuthField(icon: Icons.password, text: "Password"),
      ],
    );
  }
}
