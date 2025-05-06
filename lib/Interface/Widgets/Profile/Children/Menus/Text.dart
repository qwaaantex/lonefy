import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextMenu extends StatelessWidget {
  final CustomPopupMenuController controller;
  final Widget? child;
  const TextMenu({super.key, this.child, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomPopupMenu(controller: controller,
      menuBuilder: () {
      return TextField();
    }, pressType: PressType.singleClick, child: child!);
  }

  void showMenu(bool isShowing) {
    if (isShowing) {
      controller.showMenu();
    } else {
      controller.hideMenu();
    }
  }
}