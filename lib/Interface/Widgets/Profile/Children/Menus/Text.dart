import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';

class TextMenu extends StatefulWidget {
  final CustomPopupMenuController controller;
  final Widget? child;
  const TextMenu({super.key, this.child, required this.controller});

  @override
  State<TextMenu> createState() => _TextMenuState();
}

class _TextMenuState extends State<TextMenu> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: context.read<ProfileBloc>().state.nameUser);
    return CustomPopupMenu(
      arrowColor: Theme.of(context).scaffoldBackgroundColor,
      showArrow: true,
      controller: widget.controller,
      menuBuilder: () {
      return Container(width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).scaffoldBackgroundColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            maxLength: 10,
            style: TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              fillColor: Theme.of(context).primaryColor,
              filled: true,
              suffixIcon: IconButton(onPressed: () {
                context.read<ProfileBloc>().add(ProfileChangeNameInfo(newName: controller.text));
                widget.controller.hideMenu();
              },
                icon: Icon(CupertinoIcons.check_mark_circled, color: Colors.white,)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
              ),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
              )
            ),
          ),
        ));
    }, pressType: PressType.singleClick, child: widget.child!);
  }

  void showMenu(bool isShowing) {
    if (isShowing) {
      widget.controller.showMenu();
    } else {
      widget.controller.hideMenu();
    }
  }
}