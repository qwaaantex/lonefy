import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Settings/AppBar.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Charge.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/ClearMemory.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Confidenty.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/CustomizationSongs.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Licence.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/PathToSave.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Questions.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/SelectLanguage.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Slider.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Switch.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/TextButton.dart';

class SettingsColumn extends StatefulWidget {
  const SettingsColumn({super.key});

  @override
  State<SettingsColumn> createState() => _SettingsColumnState();
}

class _SettingsColumnState extends State<SettingsColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late ScrollController controller;
  bool isUnderground = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    controller = ScrollController();
    controller.addListener(() {
      if (controller.offset <= 0.1) {
        setState(() {
          isUnderground = true;
        });
      } else {
        setState(() {
          isUnderground = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SettingsAppBar(isUnderground: isUnderground),
        SliverFillRemaining(
          child: SingleChildScrollView(
            controller: controller,
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.8,
              child: Stack(
                clipBehavior: Clip.none,
                children: [Column(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SettingsChildrenTextButton(),
                  SizedBox(height: 10,),
                  SettingsChildrenSwitch(),
                  SizedBox(height: 10,),
                  SettingsChildrenSelectLanguage(),
                  SizedBox(height: 10,),
                  SettingsChildrenConfidenty(),
                  SizedBox(height: 10,),
                  SettingsChildrenCharge(),
                  SizedBox(height: 10,),
                  SettingsChildrenSlider(),
                  SizedBox(height: 10,),
                  SettingsChildrenCustomizationSongs(),
                  SizedBox(height: 10,),
                  SettingsChildrenClearMemory(),
                  SizedBox(height: 10,),
                  SettingsChildrenPathToSave(),
                  SizedBox(height: 10,),
                  SettingsChildrenQuestions(),
                  Spacer(),
                  SettingsLicence(),
                  SizedBox(height: 10,)
                ],),
              ]),
            ),
          ),)
      ],
    );
  }
}