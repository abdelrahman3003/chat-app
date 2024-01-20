import 'package:chat_app1/features/onboarding/presentation/view/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static String id = "onboarding";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnboardingBody());
  }
}
