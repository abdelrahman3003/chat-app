import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<String> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      await Future.delayed(const Duration(seconds: 2));
      return Constant.kSucess;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
    return "there was an error try again";
  }

  @override
  Future<String> signUp(String username, String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await Future.delayed(const Duration(seconds: 2));
      return Constant.kSucess;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return e.toString();
    }
    return "there was an error try again";
  }
}
