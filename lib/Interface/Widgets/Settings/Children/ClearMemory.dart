// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SettingsChildrenClearMemory extends StatelessWidget {
  const SettingsChildrenClearMemory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,child:
    TextButton.icon(style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      onPressed: () {}, icon: Icon(LucideIcons.delete, color: Theme.of(context).textTheme.labelMedium!.color),
       label: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
        S.of(context).ClearCache, style: Theme.of(context).textTheme.labelMedium,),
      )));
  }
}