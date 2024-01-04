import 'package:chat_app1/components/custombutton.dart';
import 'package:chat_app1/components/customtextfield.dart';
import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/components/showsnakbar.dart';
import 'package:chat_app1/cubit/register_Cubit/register_cubit.dart';
import 'package:chat_app1/pages/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class Signup extends StatelessWidget {
  Signup({super.key});
  static String id = "Signup";

  String? email, password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is Registerloading) {
          isloading = true;
        } else if (state is RegisterSucess) {
          showsnackbar(context, 'Register is done successfuly.');
          Navigator.of(context).pushReplacementNamed(Login.id);
          isloading = false;
        } else if (state is Registerfailure) {
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
                      "Sign Up",
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
                        }),
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
                    custombutton(
                      ontap: () async {
                        BlocProvider.of<RegisterCubit>(context)
                            .Register(email: email!, password: password!);
                      },
                      bottunname: "Sign Up",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "already have an account",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(Login.id);
                          },
                          child: const Text(
                            "Sign In",
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
        );
      },
    );
  }
}
