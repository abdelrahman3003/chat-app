import 'package:chat_app1/features/onboarding/presentation/view/widgets/onboarding/onboarding_buttton.dart';
import 'package:chat_app1/features/onboarding/presentation/view/widgets/onboarding/pageview_onboard.dart';
import 'package:chat_app1/features/onboarding/presentation/view/widgets/onboarding/signin_text.dart';
import 'package:chat_app1/features/onboarding/presentation/view/widgets/onboarding/spotes.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: const PageViewOnboarding()),
          const Spotes(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(15),
            child: OnboardingButton(),
          ),
          const Signin_Text(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
