import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:share_plus/share_plus.dart';

class SongInfoChildrenShareSong extends StatelessWidget {
  const SongInfoChildrenShareSong({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () async {
      SharePlus.instance.share(
        ShareParams(text: "Share test")
      );
    }, icon: Icon(HugeIcons.strokeRoundedShare01, color: Theme.of(context).primaryColor,));
  }
}