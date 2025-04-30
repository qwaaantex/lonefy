import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenTitle extends StatelessWidget {
  const ProfileChildrenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).Profile);
  }
}