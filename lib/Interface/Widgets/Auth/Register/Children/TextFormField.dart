import 'package:flutter/material.dart';

class RegisterChildrenTextFormField extends StatelessWidget {
  const RegisterChildrenTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        decoration: InputDecoration(
          hintText: "Email"
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: "Password"
        ),
      )
    ],);
  }
}