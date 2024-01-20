import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:chat_app1/features/onboarding/presentation/manager/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OnboardingCubit(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: RoutesApp.router,
          debugShowCheckedModeBanner: false,
        ));
  }
}
