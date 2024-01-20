import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/widgets/customButton.dart';
import 'package:chat_app1/features/onboarding/presentation/manager/onboarding/onboarding_cubit.dart';

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
        return CustomButtom(
          backgroundcolor: Constant.kprimaryColor,
          textcolor: Colors.white,
          borderRadius: BorderRadius.circular(20),
          text: BlocProvider.of<OnboardingCubit>(context).isfinish
              ? "Get Start"
              : "Continue",
          onPressed: () {
            BlocProvider.of<OnboardingCubit>(context).next();
          },
        );
      },
    );
  }
}
