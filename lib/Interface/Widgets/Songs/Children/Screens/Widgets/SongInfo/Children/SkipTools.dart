import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SongInfoChildrenSkipTools extends StatelessWidget {
  const SongInfoChildrenSkipTools({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedGoBackward10Sec, color: Theme.of(context).primaryColor, size: 30,),),
          IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedGoForward10Sec, color: Theme.of(context).primaryColor, size: 30,),),
        ],
      ),
    );
  }
}