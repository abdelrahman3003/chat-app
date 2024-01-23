import 'package:chat_app1/features/auth/presentarion/view/widgets/dividertext.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/icons.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/logo.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/signin_navigate.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/signup_section_feild.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/textsection.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 100),
          Logo(image: "assets/images/logo/1.PNG"),
          TextsSections(title: "Welcome!", subtitle: "Create your account"),
          SizedBox(height: 25),
          SignupSectionFields(),
          SizedBox(height: 20),
          DividerText(),
          IconsMeida(),
          SizedBox(height: 30),
          SigninNavigate(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
