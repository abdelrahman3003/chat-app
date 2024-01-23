import 'package:bloc/bloc.dart';
import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;
  void signin(String email, String password) async {
    var result = await authRepo.signIn(email, password);
    if (result == Constant.kSucess) {
      emit(SigninSuccess());
    } else {
      await Future.delayed(const Duration(seconds: 2));
      emit(SigninFailure(errorMessage: result));
    }
  }
}
