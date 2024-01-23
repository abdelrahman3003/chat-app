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
      if (e.code == 'invalid-credential') {
        return 'No user found for that email.';
      } else if (e.code == 'too-many-requests') {
        return 'Wrong password provided for that user.';
      }
    } catch (e) {
      return e.toString();
    }
    return "There was an error try again";
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
      if (e.message == 'Password should be at least 6 characters') {
        return 'Password should be at least 6 characters';
      }
      if (e.message == 'The email address is badly formatted.') {
        return 'The email address is badly formatted.';
      } else if (e.message ==
          'The email address is already in use by another account.') {
        return 'The email address is already in use by another account.';
      }
    } catch (e) {
      return e.toString();
    }
    return "There was an error try again";
  }
}
