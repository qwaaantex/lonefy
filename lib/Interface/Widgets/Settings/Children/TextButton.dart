import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenTextButton extends StatelessWidget {
  const SettingsChildrenTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(
        style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Theme.of(context).primaryColor),
        onPressed: () {}, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).SelectTheme, style: Theme.of(context).textTheme.labelMedium,),
            Icon(Icons.arrow_drop_down, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,)
                ],),
        )),
    );
  }
}