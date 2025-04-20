import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/BackgroundColor.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Column.dart';


@RoutePage()

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RegisterBackgroundColor(),
          RegisterColumn(),
        ],
      ),
    );
  }
}