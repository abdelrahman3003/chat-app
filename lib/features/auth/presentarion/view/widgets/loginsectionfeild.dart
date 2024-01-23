import 'package:chat_app1/core/utils/styles.dart';
import 'package:chat_app1/features/auth/presentarion/manager/signin/signin_cubit.dart';
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
    return BlocBuilder<SigninCubit, SigninState>(
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(children: [
            AuthField(
                onsave: (value) {
                  email = value!;
                },
                icon: Icons.email,
                text: "Email"),
            const SizedBox(height: 20),
            AuthField(
                onsave: (value) {
                  password = value!;
                },
                icon: Icons.password,
                text: "Password"),
            const SizedBox(height: 20),
            AuthButton(
              text: "Login",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  BlocProvider.of<SigninCubit>(context).signin(email, password);
                }
              },
            ),
            if (state is SigninLoading) const CircularProgressIndicator(),
            if (state is SigninFailure)
              Text(
                state.errorMessage,
                style: Styles.textStyle16.copyWith(color: Colors.red),
              )
          ]),
        );
      },
    );
  }
}
