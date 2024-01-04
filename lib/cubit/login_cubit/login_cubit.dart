import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> Login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(message: "No user found for that email"));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(message: 'Wrong password provided for that user '));
      } else {
        emit(LoginFailure(message: 'there is an error, try again '));
      }
    } catch (e) {
      print(e);
    }
  }
}
