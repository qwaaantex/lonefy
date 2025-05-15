import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenCharge extends StatelessWidget {
  const SettingsChildrenCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton.icon(
        style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        icon: Icon(HugeIcons.strokeRoundedBatteryFull, color: Theme.of(context).textTheme.labelMedium!.color,),
        onPressed: () {}, label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).ConfigureConsumption, style: Theme.of(context).textTheme.labelMedium,),
              Icon(HugeIcons.strokeRoundedArrowMoveUpRight, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,)
            ],
          ),
        )),
    );
  }
}