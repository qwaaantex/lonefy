import 'package:flutter/widgets.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/BugReport.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Charge.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/ClearMemory.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Confidenty.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/CustomizationSongs.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/InfoDevice.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Licence.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/NoiceReduction.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/PathToSave.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Questions.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/SelectLanguage.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Slider.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/Switch.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/TextButton.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children/UsagePolicy.dart';

class SettingsChildren {
  final List<Widget> _widgets = [
    SettingsChildrenInfoDevice(),
    SizedBox(height: 10,),
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
    SettingsChildrenNoiceReduction(),
    SizedBox(height: 10,),
    SettingsChildrenCustomizationSongs(),
    SizedBox(height: 10,),
    SettingsChildrenClearMemory(),
    SizedBox(height: 10,),
    SettingsChildrenPathToSave(),
    SizedBox(height: 10,),
    SettingsChildrenUsagePolicy(),
    SizedBox(height: 10,),
    SettingsChildrenBugReport(),
    SizedBox(height: 10,),
    SettingsChildrenQuestions(),
    SizedBox(height: 20,),
    SettingsLicence(),
    SizedBox(height: 10,)
  ];

  List<Widget> get widgets => _widgets;
}