part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class Registerloading extends RegisterState {}

final class RegisterSucess extends RegisterState {}

final class Registerfailure extends RegisterState {
  final String message;

  Registerfailure({required this.message});
}
