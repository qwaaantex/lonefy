import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SongInfoChildrenImage extends StatelessWidget {
  const SongInfoChildrenImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Theme.of(context).primaryColor),
      child: Padding(padding: EdgeInsetsGeometry.all(12), child: Icon(HugeIcons.strokeRoundedFileUnknown, color: Theme.of(context).textTheme.labelMedium!.color, size: 54,),),
    );
  }
}