
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  String _email = '';
  String _password = '';
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  TextEditingController get controllerEmail => _controllerEmail;
  TextEditingController get controllerPassword => _controllerPassword;
  String get email => _email;
  String get password => _password;

  void changeEmail(String email) {
    _email = email;
    notifyListeners();
  }
  void changePassword(String password) {
    _password = password;
    notifyListeners();
  }
  void clearSigning() {
  _controllerEmail.clear();
  _controllerPassword.clear();
  notifyListeners();
  }
}