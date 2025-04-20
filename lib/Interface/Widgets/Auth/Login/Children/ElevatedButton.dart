import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class LoginChildrenElevatedButton extends StatelessWidget {
  const LoginChildrenElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      onPressed: () {
    
    }, label: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(S.of(context).Login, style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'lonefyBold')),
    ), icon: Icon(CupertinoIcons.bolt_horizontal_circle_fill, color: Colors.black, size: 20,),);
  }
}