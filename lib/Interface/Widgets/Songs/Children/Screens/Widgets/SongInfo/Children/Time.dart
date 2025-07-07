import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongInfoChildrenTime extends StatelessWidget {
  const SongInfoChildrenTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("0:00", style: Theme.of(context).textTheme.labelSmall,),
      ),
    );
  }
}