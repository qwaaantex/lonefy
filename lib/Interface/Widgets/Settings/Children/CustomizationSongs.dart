import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenCustomizationSongs extends StatelessWidget {
  const SettingsChildrenCustomizationSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: badges.Badge(
        badgeStyle: badges.BadgeStyle(badgeColor: Colors.green),
      badgeContent: Icon(HugeIcons.strokeRoundedNewReleases, color: Theme.of(context).scaffoldBackgroundColor, size: 20,),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          onPressed: () {}, child:  
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(S.of(context).CustomizationSongs, style: Theme.of(context).textTheme.labelSmall  ,),
              Icon(HugeIcons.strokeRoundedArrowRight01, color: Theme.of(context).primaryColor, size: 24,)
                  ],),
          )),
      )
    );
  }
}