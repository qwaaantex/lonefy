import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenSelect extends StatelessWidget {
  const ProfileChildrenSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton.icon(style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        onPressed: () {}, icon: Icon(CupertinoIcons.selection_pin_in_out, color: Theme.of(context).textTheme.labelSmall!.color, size: 20,), label: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(S.of(context).SelectStatus, style: Theme.of(context).textTheme.labelSmall,),
        )),
    );
  }
}