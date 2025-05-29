import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Settings/AppBar.dart';
import 'package:lonefy/Interface/Widgets/Settings/Children.dart';

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
            child: Column(mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
            children: SettingsChildren().widgets,),
          ),
        )
      ],
    );
  }
}