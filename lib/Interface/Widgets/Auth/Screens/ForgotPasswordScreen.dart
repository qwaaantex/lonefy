import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Screens/ForgotPassword/Column.dart';


@RoutePage()

class RegisterScreensForgotPasswordScreen extends StatefulWidget {
  const RegisterScreensForgotPasswordScreen({super.key});

  @override
  State<RegisterScreensForgotPasswordScreen> createState() => _RegisterScreensForgotPasswordScreenState();
}

class _RegisterScreensForgotPasswordScreenState extends State<RegisterScreensForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RegisterScreensForgotPasswordColumn(),);
  }
}