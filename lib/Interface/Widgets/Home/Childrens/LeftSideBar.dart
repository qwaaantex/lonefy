import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';
import 'package:lonefy/Interface/Widgets/Home/LeftSideBar/Item.dart';

class HomeChildrenLeftSideBar extends StatelessWidget {
  const HomeChildrenLeftSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<IndexPageCubit>();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(height: MediaQuery.of(context).size.height * 0.6,
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: Theme.of(context).canvasColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            LeftSideBarItem(child: IconButton(style: ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.transparent.withOpacity(0.02))),
              icon: Icon(Icons.home, size: 26,), onPressed: () {
                cubit.changeIndex(0);
              },)),
            LeftSideBarItem(child: IconButton(onPressed: () {
                cubit.changeIndex(1);
            },
              icon: Icon(CupertinoIcons.double_music_note, size: 26,))),
            LeftSideBarItem(child: IconButton(icon: Icon(CupertinoIcons.tag, size: 26,), onPressed: () {
                cubit.changeIndex(2);
            },)),
            LeftSideBarItem(child: IconButton(icon: Icon(CupertinoIcons.person, size: 26,), onPressed: () {
                cubit.changeIndex(3);
            },)),
            LeftSideBarItem(child: IconButton(icon: Icon(CupertinoIcons.settings), onPressed: () {
                cubit.changeIndex(4);
            },)),
                  ],),
          ),)
      ),
    );
  }
}