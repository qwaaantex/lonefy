// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SettingsChildrenConfidenty extends StatelessWidget {
  const SettingsChildrenConfidenty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12))),
        onPressed: () {}, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).Confidentiality, style: Theme.of(context).textTheme.labelSmall,),
            Icon(LucideIcons.arrowRight, color: Theme.of(context).primaryColor,)
                ],),
        )),
    );
  }
}