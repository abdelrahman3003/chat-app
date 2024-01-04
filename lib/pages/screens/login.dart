import 'package:chat_app1/components/custombutton.dart';
import 'package:chat_app1/components/customtextfield.dart';
import 'package:chat_app1/components/showsnakbar.dart';
import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/cubit/chat_cubit/chat_cubit.dart';

import 'package:chat_app1/cubit/login_cubit/login_cubit.dart';
import 'package:chat_app1/pages/screens/chat.dart';
import 'package:chat_app1/pages/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String id = "Login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isloading = false;
  String? email, password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isloading = true;
        } else if (state is LoginSuccess) {
          BlocProvider.of<ChatCubit>(context).getMessage();
          showsnackbar(context, 'login is done successfuly.');
          Navigator.of(context).pushReplacementNamed(Chat.id, arguments: email);
          isloading = false;
        } else if (state is LoginFailure) {
          showsnackbar(context, state.message);
          isloading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isloading,
          child: Scaffold(
            backgroundColor: kprimaryColor,
            body: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 50),
              child: Form(
                key: formstate,
                child: Form(
                  key: formState,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        klogo,
                        height: 100,
                      ),
                      const Center(
                        child: Text(
                          "Scholar Chat",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Pacifico"),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      customtextfield(
                        hintText: "Email",
                        onchange: (value) {
                          email = value;
                        },
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      customtextfield(
                        hintText: "Password",
                        onchange: (value) {
                          password = value;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: custombutton(
                          ontap: () async {
                            if (formState.currentState!.validate()) {
                              BlocProvider.of<LoginCubit>(context)
                                  .Login(email: email!, password: password!);
                            }
                          },
                          bottunname: "Sign In",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "don't have an account",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Signup.id);
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Color(0xffc7ede6), fontSize: 18),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
