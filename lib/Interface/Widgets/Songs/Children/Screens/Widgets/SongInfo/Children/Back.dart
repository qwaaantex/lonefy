import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SongInfoChildrenBack extends StatelessWidget {
  const SongInfoChildrenBack({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
          onPressed: () {
            context.router.back();
          }, child: Icon(HugeIcons.strokeRoundedArrowLeft01, color: Theme.of(context).textTheme.labelSmall!.color, size: 24,));
  }
}