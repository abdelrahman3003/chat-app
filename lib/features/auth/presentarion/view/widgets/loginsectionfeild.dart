import 'package:chat_app1/core/utils/navigate.dart';
import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:chat_app1/features/auth/presentarion/manager/cubit/auth_cubit.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/auth_button.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/authfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginSectionFields extends StatefulWidget {
  const LoginSectionFields({
    super.key,
  });

  @override
  State<LoginSectionFields> createState() => _LoginSectionFieldsState();
}

class _LoginSectionFieldsState extends State<LoginSectionFields> {
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AuthField(
              onsave: (value) {
                email = value!;
              },
              icon: Icons.email,
              text: "Email"),
          const SizedBox(height: 20),
          AuthField(
              onsave: (value) {
                email = value!;
              },
              icon: Icons.password,
              text: "Password"),
          const SizedBox(height: 20),
          AuthButton(
            text: "Login",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                BlocProvider.of<AuthCubit>(context).signin(email, password);
                navigateToPage(context, RoutesApp.kchat);
              }
            },
          )
        ],
      ),
    );
  }
}
