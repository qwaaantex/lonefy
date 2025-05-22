import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:badges/badges.dart' as badges;

class SongsChildrenImportSongs extends StatelessWidget {
  const SongsChildrenImportSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      ignorePointer: true,
      badgeStyle: badges.BadgeStyle(badgeColor: Theme.of(context).primaryColor),
      badgeContent: Center(child: Icon(HugeIcons.strokeRoundedNewReleases, size: 18, color: Theme.of(context).textTheme.labelMedium!.color,),),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextButton.icon(style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12))
        ),
          onPressed: () {
        
        }, icon: Icon(HugeIcons.strokeRoundedFileImport, color: Theme.of(context).primaryColor, size: 24,),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(S.of(context).ImportSongs, style: Theme.of(context).textTheme.labelSmall,),
        ),),
      ),
    );
  }
}