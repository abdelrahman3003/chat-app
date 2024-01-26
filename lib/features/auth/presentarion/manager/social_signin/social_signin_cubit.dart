import 'package:bloc/bloc.dart';
import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'social_signin_state.dart';

class SocialSigninCubit extends Cubit<SocialSigninState> {
  SocialSigninCubit(this.authRepo) : super(SocialSigninInitial());
  final AuthRepo authRepo;
  void googleSignin() async {
    var result = await authRepo.signinwithgoogle();
    await Future.delayed(const Duration(seconds: 2));
    if (result == "error") {
      emit(SocialSigninFailure(errorMessage: "the account is not founf"));
    } else {
      emit(SocialSigninSuccess(email: result));
    }
  }
}
