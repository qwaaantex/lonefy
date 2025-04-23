import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Home/RightSideBar/item.dart';

class HomeChildrenRightSideBar extends StatefulWidget {
  const HomeChildrenRightSideBar({super.key});

  @override
  State<HomeChildrenRightSideBar> createState() => _HomeChildrenRightSideBarState();
}

class _HomeChildrenRightSideBarState extends State<HomeChildrenRightSideBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0), child: Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(48), color: Theme.of(context).canvasColor), child: Column(children: [
        RightSideBarItem(child: Icon(Icons.music_note))
      ],),));
  }
}