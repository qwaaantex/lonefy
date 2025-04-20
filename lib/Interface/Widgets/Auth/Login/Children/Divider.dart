import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class LoginChildrenDivider extends StatelessWidget {
  const LoginChildrenDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 1.5, color: Colors.grey.shade800,),
        Text(S.current.SignIn, style: TextStyle(color: Colors.black, fontSize: 16,),)
      ],
    );
  }
}