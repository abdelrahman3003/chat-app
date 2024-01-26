import 'package:bloc/bloc.dart';
import 'package:chat_app1/constants.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'social_signin_state.dart';

class SocialSigninCubit extends Cubit<SocialSigninState> {
  SocialSigninCubit(this.authRepo) : super(SocialSigninInitial());
  final AuthRepo authRepo;
  void googleSignin(String email, String password) async {
    var result = await authRepo.signIn(email, password);
    if (result == Constant.kSucess) {
      emit(SocialSigninSuccess());
    } else {
      await Future.delayed(const Duration(seconds: 2));
      emit(SocialSigninFailure(errorMessage: result));
    }
  }
}
