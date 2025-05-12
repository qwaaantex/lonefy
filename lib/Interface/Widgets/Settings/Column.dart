import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/ClearMemory.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Confidenty.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Licence.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Questions.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Slider.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Switch.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Text.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/TextButton.dart';

class SettingsColumn extends StatefulWidget {
  const SettingsColumn({super.key});

  @override
  State<SettingsColumn> createState() => _SettingsColumnState();
}

class _SettingsColumnState extends State<SettingsColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SettingsChildrenText(),
      SizedBox(height: 10,),
      SettingsChildrenTextButton(),
      SizedBox(height: 10,),
      SettingsChildrenSwitch(),
      SizedBox(height: 10,),
      SettingsChildrenConfidenty(),
      SizedBox(height: 10,),
      SettingsChildrenSlider(),
      SizedBox(height: 10,),
      SettingsChildrenClearMemory(),
      SizedBox(height: 10,),
      SettingsChildrenQuestions(),
      Spacer(),
      SettingsLicence(),
      SizedBox(height: 10,)
    ],);
  }
}