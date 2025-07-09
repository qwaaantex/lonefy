import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';

class SongsChildrenSnackBar extends StatefulWidget {
  final String name;
  final String author;
  final int index;
  final AudioPlayer player;
  const SongsChildrenSnackBar({
    super.key,
    required this.author,
    required this.index,
    required this.name,
    required this.player,
  });

  @override
  State<SongsChildrenSnackBar> createState() => _SongsChildrenSnackBarState();
}

class _SongsChildrenSnackBarState extends State<SongsChildrenSnackBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.router.navigate(SongsChildrenRoutesSongsInfoRoute(author: widget.author, name: widget.name, index: widget.index));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: () {
              ScaffoldMessenger.of(context).clearSnackBars();
              widget.player.stop();
            }, icon: Icon(Icons.close, color: Theme.of(context).textTheme.labelMedium!.color,)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(overflow: TextOverflow.ellipsis,
                    widget.name, style: Theme.of(context).textTheme.labelMedium),
                  Text(overflow: TextOverflow.ellipsis,
                    widget.author, style: TextStyle(color: Theme.of(context).textTheme.labelMedium!.color, fontSize: 14)),
                ],
              ),
            ),
            SizedBox(width: 15,),
            StreamBuilder(stream: widget.player.durationStream, builder: (context, snapshot) {
              final duration = snapshot.data ?? Duration.zero;
              return StreamBuilder(stream: widget.player.positionStream, builder: (context, snapshot) {
                final position = snapshot.data ?? Duration.zero;
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.22,
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
        ),
      ),
    );
  }
}
