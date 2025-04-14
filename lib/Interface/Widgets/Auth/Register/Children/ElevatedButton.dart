import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/generated/l10n.dart';

class RegisterChildrenElevatedButton extends StatelessWidget {
  const RegisterChildrenElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: () {

    }, label: Text(Intl.message(S.of(context).Register)),);
  }
}