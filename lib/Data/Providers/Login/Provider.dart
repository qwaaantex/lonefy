import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  String _email = '';
  String _password = '';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  String get email => _email;
  String get password => _password;


  void changeEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void changePassword(String value) {
    _password = value;
    notifyListeners();
  }
}