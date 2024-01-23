import 'package:bloc/bloc.dart';
import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  void signup(String username, String email, String password) async {
    var result = await authRepo.signUp(username, email, password);
    emit(SignupLoading());

    if (result == Constant.kSucess) {
      emit(SignupSucces());
    } else {
      await Future.delayed(const Duration(seconds: 2));
      emit(SignupFailure(errorMessage: result));
    }
  }
}
