import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SongsChildrenYourSongs extends StatelessWidget {
  const SongsChildrenYourSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).ThisIsYourSongs, textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelSmall),
            TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              onPressed: () {}, child: Icon(HugeIcons.strokeRoundedAdd01, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,))
          ],
        ),
      ),
    );
  }
}