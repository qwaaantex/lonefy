
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  String? _email;
  String? _password;
  String? get email => _email;
  String? get password => _password;

  void changeEmail(String email) {
    _email = email;
    notifyListeners();
  }
  void changePassword(String password) {
    _password = password;
    notifyListeners();
  }
}