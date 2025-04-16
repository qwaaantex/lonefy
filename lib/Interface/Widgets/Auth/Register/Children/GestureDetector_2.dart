import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class RegisterChildrenGestureDetector2 extends StatelessWidget {
  const RegisterChildrenGestureDetector2({super.key});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(child: Text((S.of(context).HaveAnyAccount), style: TextStyle(color: Colors.black, fontSize: 13, fontFamily: 'lonefyBold'),));
  }
}