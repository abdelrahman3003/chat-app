import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:chat_app1/core/widgets/customButton.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/authfield.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/logg.dart';
import 'package:flutter/material.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Logo(
            image: "assets/images/logo/1.PNG",
          ),
          const Text(
            "Welcom! back,",
            style: Styles.textStyle25,
          ),
          const Opacity(
            opacity: .4,
            child: Text(
              "Login in your account",
              style: Styles.textStyle16,
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(icon: Icons.person, text: "Username"),
                SizedBox(height: 20),
                AuthField(icon: Icons.password, text: "Password"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CustomButtom(
              backgroundcolor: Constant.kprimaryColor2,
              textcolor: Colors.white,
              text: "Login",
              width: 120,
              borderRadius: BorderRadius.circular(30),
              onPressed: () {})
        ],
      ),
    );
  }
}
