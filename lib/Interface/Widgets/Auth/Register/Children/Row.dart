import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterChildrenRow extends StatelessWidget {
  const RegisterChildrenRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min,
      children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.tealAccent.shade700),
        child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
          onPressed: () {},
          child: Image.asset("lib/Interface/Assets/Images/Google.png", scale: 8,)),
      ),
      Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.tealAccent.shade700),
        child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
          onPressed: () {},
          child: Image.asset("lib/Interface/Assets/Images/Facebook.png", scale: 7.5,)),
      )

    ],);
  }
}