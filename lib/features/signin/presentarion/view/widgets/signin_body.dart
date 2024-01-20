import 'package:chat_app1/features/signin/presentarion/view/widgets/auth_button.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/authllsitfeild.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/dividertext.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/icons.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/logg.dart';
import 'package:chat_app1/features/signin/presentarion/view/widgets/textsection.dart';
import 'package:flutter/material.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 100),
          Logo(
            image: "assets/images/logo/1.PNG",
          ),
          TextsSections(),
          SizedBox(height: 25),
          AuthListField(),
          SizedBox(height: 20),
          AuthButton(),
          SizedBox(height: 20),
          DividerText(),
          IconsMeida(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
