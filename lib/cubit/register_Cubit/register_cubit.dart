import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  Future<void> Register(
      {required String email, required String password}) async {
    try {
      emit(Registerloading());
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterSucess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(Registerfailure(message: "password is weak"));
      } else if (e.code == 'email-already-in-use') {
        emit(Registerfailure(message: 'this email is found already '));
      }
    }
  }
}
