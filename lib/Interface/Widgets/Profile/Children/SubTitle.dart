import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenSubTitle extends StatelessWidget {
  const ProfileChildrenSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(textAlign: TextAlign.center,
      text: TextSpan(children: [
      TextSpan(text: S.of(context).HaveAnyQuestions),
      TextSpan(text: S.of(context).Contact)
    ]));
  }
}