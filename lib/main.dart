import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:chat_app1/features/onboarding/presentation/manager/onboarding/onboarding_cubit.dart';
import 'package:chat_app1/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
