import 'package:flutter/material.dart';

class SettingsChildrenSlider extends StatelessWidget {
  const SettingsChildrenSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(activeColor: Theme.of(context).cardColor,
      thumbColor: Theme.of(context).primaryColor,
      value: 0, onChanged: (value) {

    });
  }
}