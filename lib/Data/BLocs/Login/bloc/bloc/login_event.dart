part of 'login_bloc.dart';


class LoginEvent extends LoginState{
  final String email;
  final String password;

  LoginEvent({required this.email, required this.password});
}
