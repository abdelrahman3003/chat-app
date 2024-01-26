import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<String> signIn(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print("============");
      if (e.code == 'user-not-found') {
        return 'user is not found';
      }
      if (e.code == 'invalid-credential') {
        return 'Incorrect password or email';
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
