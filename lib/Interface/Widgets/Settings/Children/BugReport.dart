import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenBugReport extends StatelessWidget {
  const SettingsChildrenBugReport({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      ),
        onPressed: () {
      
      }, child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(HugeIcons.strokeRoundedBug01, color: Theme.of(context).primaryColor, size: 24,),
            Text(S.of(context).ReportABug, style: Theme.of(context).textTheme.labelSmall,),
            Icon(HugeIcons.strokeRoundedArrowRight01, color: Theme.of(context).primaryColor, size: 24,),
          ]
        ),
      ))
    );
  }
}