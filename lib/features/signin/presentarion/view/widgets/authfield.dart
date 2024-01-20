import 'package:chat_app1/features/signin/presentarion/view/widgets/iconauth.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/textfiledauth.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      Positioned(
        top: -9,
        child: TextfieldAuth(
          text: "username",
        ),
      ),
      Positioned(
        left: .5,
        child: IconAuth(),
        top: -10,
      )
    ]);
  }
}
