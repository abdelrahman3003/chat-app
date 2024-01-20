import 'package:chat_app1/components/custombutton.dart';
import 'package:chat_app1/cubit/onboarding/onboarding_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return custombutton(
          bottunname: BlocProvider.of<OnboardingCubit>(context).isfinish
              ? "Get Start"
              : "Continue",
          ontap: () {
            BlocProvider.of<OnboardingCubit>(context).next();
          },
        );
      },
    );
  }
}
