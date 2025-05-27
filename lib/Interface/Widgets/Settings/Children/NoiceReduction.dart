import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenNoiceReduction extends StatefulWidget {
  const SettingsChildrenNoiceReduction({super.key});

  @override
  State<SettingsChildrenNoiceReduction> createState() => _SettingsChildrenNoiceReductionState();
}

class _SettingsChildrenNoiceReductionState extends State<SettingsChildrenNoiceReduction> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(decoration: BoxDecoration(color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Text(S.of(context).NoiseReduction, style: Theme.of(context).textTheme.labelSmall,),
            )),
          CupertinoSlider(activeColor: Theme.of(context).primaryColor,
            thumbColor: Theme.of(context).primaryColor,
            value: sliderValue, onChanged: (value) {
            setState(() {
              sliderValue = value;
            });
          }),
          Container(decoration: BoxDecoration(color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(padding: EdgeInsets.all(6),
            child: Icon(HugeIcons.strokeRoundedFolderMusic, color: Theme.of(context).primaryColor,),
            ),
            )
        ],
      ),
    );
  }
}