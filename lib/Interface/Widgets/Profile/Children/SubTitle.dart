import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenSubTitle extends StatelessWidget {
  const ProfileChildrenSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(textAlign: TextAlign.center,
        text: TextSpan(children: [
        TextSpan(text: "${S.of(context).HaveAnyQuestions} ", style: TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16, fontWeight: FontWeight.w600)),
        TextSpan(text: S.of(context).Contact, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.bold))
      ])),
    );
  }
}