import 'package:chat_app1/features/auth/presentarion/view/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SignupBody(),
      ),
    );
  }
}
