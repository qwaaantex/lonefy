import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:just_audio/just_audio.dart';

class SongsChildrenSnackBar extends StatelessWidget {
  final String name;
  final AudioPlayer player;
  const SongsChildrenSnackBar({
    super.key,
    required this.name,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(name),
        IconButton(
          onPressed: () {
            if (player.playing) {
              player.pause();
            } else {
              player.play();
            }
          },
          icon: Icon(HugeIcons.strokeRoundedPause),
        ),
      ],
    );
  }
}
