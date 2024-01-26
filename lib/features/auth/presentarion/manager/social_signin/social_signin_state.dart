part of 'social_signin_cubit.dart';

@immutable
sealed class SocialSigninState {}

final class SocialSigninInitial extends SocialSigninState {}

final class SocialSignLoading extends SocialSigninState {}

final class SocialSigninFailure extends SocialSigninState {
  final String errorMessage;

  SocialSigninFailure({required this.errorMessage});
}

final class SocialSigninSuccess extends SocialSigninState {}
