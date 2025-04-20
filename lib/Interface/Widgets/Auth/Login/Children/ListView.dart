import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class LoginChildrenListView1 extends StatelessWidget {
  const LoginChildrenListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
             
            },
            icon: Icon(CupertinoIcons.globe, color: Colors.white,),
            label: Text(S.current.ChooseLanguage, style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'lonefyBold'),));
      }
    );
  }
}