import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class LoginChildrenGestureDetector2 extends StatelessWidget {
  const LoginChildrenGestureDetector2({super.key});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(onTap: () {
        AutoRouter.of(context).back();
      },
        child: Text(S.of(context).DontHaveAnyAccount, style: TextStyle(color: Colors.black, fontSize: 13, fontFamily: 'lonefyBold'),));
  }
}