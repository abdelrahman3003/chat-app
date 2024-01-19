import 'package:chat_app1/cubit/chat_cubit/chat_cubit.dart';
import 'package:chat_app1/cubit/login_cubit/login_cubit.dart';
import 'package:chat_app1/cubit/register_Cubit/register_cubit.dart';
import 'package:chat_app1/firebase_options.dart';
import 'package:chat_app1/pages/screens/chat.dart';
import 'package:chat_app1/pages/screens/chat2.dart';
import 'package:chat_app1/pages/screens/login.dart';
import 'package:chat_app1/pages/screens/onboarding.dart';
import 'package:chat_app1/pages/screens/signup.dart';

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
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
      ],
      child: MaterialApp(
        routes: {
          Login.id: (context) => const Login(),
          Signup.id: (context) => Signup(),
          Chat.id: (context) => Chat(),
          chat2.id: (context) => chat2(),
          OnBoarding.id: (context) => const OnBoarding(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: OnBoarding.id,
      ),
    );
  }
}
