import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongInfoChildrenText extends StatelessWidget {
  final String name;
  final String author;
  const SongInfoChildrenText({super.key, required this.name, required this.author});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(name, style: TextStyle(color: Theme.of(context).textTheme.labelSmall!.color, fontSize: 20, fontWeight: FontWeight.bold)),
      Text(author, style: TextStyle(color: Theme.of(context).textTheme.labelSmall!.color, fontSize: 15, fontWeight: FontWeight.w600),),
    ],);
  }
}