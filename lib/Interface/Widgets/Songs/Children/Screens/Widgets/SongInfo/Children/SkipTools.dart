import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SongInfoChildrenSkipTools extends StatelessWidget {
  const SongInfoChildrenSkipTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedGoBackward30Sec, color: Theme.of(context).primaryColor, size: 30,),),
            SizedBox(height: 10,),
            IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedGoBackward15Sec, color: Theme.of(context).primaryColor, size: 30,),),
            SizedBox(height: 10,),
            IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedGoForward15Sec, color: Theme.of(context).primaryColor, size: 30,),),
            SizedBox(height: 10,),
            IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedGoBackward30Sec, color: Theme.of(context).primaryColor, size: 30,),),
          ],
        ),
      ),
    );
  }
}