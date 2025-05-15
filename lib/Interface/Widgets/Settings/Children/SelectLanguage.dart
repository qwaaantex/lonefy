import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:badges/badges.dart' as badges;

class SettingsChildrenSelectLanguage extends StatelessWidget {
  const SettingsChildrenSelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: badges.BadgeStyle(
        badgeColor: Theme.of(context).primaryColor
      ),
      badgeContent: Icon(HugeIcons.strokeRoundedAdd01, color: Theme.of(context).textTheme.labelMedium!.color, size: 20,),
      child: 
    SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        
        child: Align(alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(CupertinoIcons.globe, size: 24, color: Theme.of(context).primaryColor,),
                Text(S.of(context).ChooseLanguage, style: Theme.of(context).textTheme.labelSmall,),
                Icon(HugeIcons.strokeRoundedArrowRight01, color: Theme.of(context).primaryColor, size: 24,)
              ],
            ),
          )),
      ),
    ));
  }
}