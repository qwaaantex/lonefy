import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileLinks extends StatelessWidget {
  const ProfileLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(
        style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Theme.of(context).cardColor),
        onPressed: () {},
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Icon(HugeIcons.strokeRoundedLink01, color: Theme.of(context).primaryColor, size: 24,),
          style: ListTileStyle.list,
          trailing: Icon(HugeIcons.strokeRoundedAdd01, size: 24, color: Theme.of(context).primaryColor,),
          title: Text(S.of(context).AddLinks, style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
        ),
      )
    );
  }
}