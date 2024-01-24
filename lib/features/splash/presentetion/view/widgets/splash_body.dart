import 'package:chat_app1/features/splash/presentetion/view/widgets/splash_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: SplashLogo());
  }
}
