import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Home/LeftSideBar/Item.dart';

class HomeChildrenLeftSideBar extends StatelessWidget {
  const HomeChildrenLeftSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(height: MediaQuery.of(context).size.height * 0.8,
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: Theme.of(context).canvasColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
            LeftSideBarItem(child: Icon(Icons.home))
                  ],),
          ),)
      ),
    );
  }
}