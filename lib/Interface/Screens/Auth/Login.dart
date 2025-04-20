import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Column.dart';


@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginColumn(),
    );
  }
}