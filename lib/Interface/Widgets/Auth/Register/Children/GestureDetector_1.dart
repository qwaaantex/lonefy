import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class RegisterChildrenGestureDetector1 extends StatelessWidget {
  const RegisterChildrenGestureDetector1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
    }, child: Text(S.current.ForgotPassword, style: TextStyle(color: Colors.black, fontSize: 13, fontFamily: 'lonefyBold'),));
  }
}