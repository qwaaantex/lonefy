import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenSlider extends StatefulWidget {
  const SettingsChildrenSlider({super.key});

  @override
  State<SettingsChildrenSlider> createState() => _SettingsChildrenSliderState();
}

class _SettingsChildrenSliderState extends State<SettingsChildrenSlider> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(S.of(context).SelectVolume, style: Theme.of(context).textTheme.labelSmall,),
            )),
          CupertinoSlider(
            activeColor: Theme.of(context).primaryColor,
            thumbColor: Theme.of(context).primaryColor,
            value: sliderValue, onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
          }),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).cardColor),
          child: Padding(padding: EdgeInsets.all(6), child: Icon(HugeIcons.strokeRoundedMusicNote01, color: Theme.of(context).primaryColor,),),)
        ],
      ),
    );
  }
}