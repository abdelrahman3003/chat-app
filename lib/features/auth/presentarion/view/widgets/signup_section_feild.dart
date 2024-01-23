import 'package:chat_app1/core/utils/styles.dart';
import 'package:chat_app1/features/auth/presentarion/manager/signup/signup_cubit.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/auth_button.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/authfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupSectionFields extends StatefulWidget {
  const SignupSectionFields({
    super.key,
  });

  @override
  State<SignupSectionFields> createState() => _SignupSectionFieldsState();
}

class _SignupSectionFieldsState extends State<SignupSectionFields> {
  late String username;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              AuthField(
                icon: Icons.person,
                text: "Username",
                onsave: (value) {
                  username = value!;
                },
              ),
              const SizedBox(height: 20),
              AuthField(
                icon: Icons.email,
                text: "Email",
                onsave: (value) {
                  email = value!;
                },
              ),
              const SizedBox(height: 20),
              AuthField(
                icon: Icons.password,
                text: "Password",
                onsave: (value) {
                  password = value!;
                },
              ),
              const SizedBox(height: 20),
              AuthButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      BlocProvider.of<SignupCubit>(context)
                          .signup(username, email, password);
                    }
                  },
                  text: "Signup"),
              const SizedBox(height: 10),
              if (state is SignupLoading) const CircularProgressIndicator(),
              if (state is SignupFailure)
                Text(
                  state.errorMessage,
                  style: Styles.textStyle16.copyWith(color: Colors.red),
                )
            ],
          ),
        );
      },
    );
  }
}
