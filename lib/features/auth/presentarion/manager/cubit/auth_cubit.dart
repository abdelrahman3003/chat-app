import 'package:bloc/bloc.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;
  void signin(String email, String password) async {
    var result = authRepo.signIn(email, password);
    if (result == "Success") {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure(errorMessage: result));
    }
  }

  void signup(String username, String email, String password) async {
    var result = await authRepo.signUp(username, email, password);
    if (result == "Success") {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure(errorMessage: result));
    }
  }
}
