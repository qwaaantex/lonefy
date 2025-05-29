import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SongsChildrenSnackBar extends StatefulWidget {
  final String name;
  final String author;
  final AudioPlayer player;
  const SongsChildrenSnackBar({
    super.key,
    required this.author,
    required this.name,
    required this.player,
  });

  @override
  State<SongsChildrenSnackBar> createState() => _SongsChildrenSnackBarState();
}

class _SongsChildrenSnackBarState extends State<SongsChildrenSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name, style: Theme.of(context).textTheme.labelMedium),
            Text(widget.author, style: TextStyle(color: Theme.of(context).textTheme.labelMedium!.color, fontSize: 14)),
          ],
        ),
        StreamBuilder(stream: widget.player.durationStream, builder: (context, snapshot) {
          final duration = snapshot.data ?? Duration.zero;
          return StreamBuilder(stream: widget.player.positionStream, builder: (context, snapshot) {
            final position = snapshot.data ?? Duration.zero;
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Slider(
                thumbColor: Theme.of(context).textTheme.labelMedium!.color,
                activeColor: Theme.of(context).textTheme.labelMedium!.color,
                padding: EdgeInsets.zero,
                min: 0, max: duration.inMilliseconds.toDouble(),
                value: position.inMilliseconds.toDouble(), onChanged: (value) {
                widget.player.seek(Duration(milliseconds: value.toInt()));
              }),
            );
          });
        }),
        IconButton(
          onPressed: () {
            if (widget.player.playing) {
            setState(() {
              widget.player.pause();
            });
            } else {
              setState(() {
                widget.player.play();
              });
            }
          },
          icon: Icon(widget.player.playing == true ? CupertinoIcons.pause : CupertinoIcons.play_arrow, color: Theme.of(context).textTheme.labelMedium!.color,),
        )
      ],
    );
  }
}
