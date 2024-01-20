import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Signin_Text extends StatelessWidget {
  const Signin_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Opacity(
          opacity: .8,
          child: Text(
            "Already  have an account? ",
            style: Styles.textStyle18,
          ),
        ),
        GestureDetector(
            onTap: () {},
            child: Text(
              "SIGN IN",
              style:
                  Styles.textStyle20.copyWith(color: Constant.kprimaryColor1),
            )),
      ],
    );
  }
}
