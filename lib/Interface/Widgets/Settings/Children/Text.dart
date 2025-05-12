import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenText extends StatelessWidget {
  const SettingsChildrenText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).Settings);
  }
}