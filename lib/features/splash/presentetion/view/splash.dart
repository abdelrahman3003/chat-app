import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/splash/presentetion/view/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Constant.kprimaryColor1,
      body: SplashBody(),
    );
  }
}
