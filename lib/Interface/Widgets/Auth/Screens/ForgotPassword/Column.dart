import 'package:flutter/cupertino.dart';

class RegisterScreensForgotPasswordColumn extends StatefulWidget {
  const RegisterScreensForgotPasswordColumn({super.key});

  @override
  State<RegisterScreensForgotPasswordColumn> createState() => _RegisterScreensForgotPasswordColumnState();
}

class _RegisterScreensForgotPasswordColumnState extends State<RegisterScreensForgotPasswordColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
    ],);
  }
}