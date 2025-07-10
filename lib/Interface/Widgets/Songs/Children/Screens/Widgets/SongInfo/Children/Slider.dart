import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lonefy/Data/Models/Songs/AddedSongsModel.dart';
  

final Box<AddedSongsModel> currentList= Hive.box<AddedSongsModel>("AddSongsState");

class SongInfoChildrenSlider extends StatefulWidget {
  final int index;
  const SongInfoChildrenSlider({super.key, required this.index});

  @override
  State<SongInfoChildrenSlider> createState() => _SongInfoChildrenSliderState();
}

class _SongInfoChildrenSliderState extends State<SongInfoChildrenSlider> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayed = false;
  @override
  Widget build(BuildContext context) {
    final String path = currentList.get("value")!.addedSongs![widget.index]!;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous_outlined, color: Theme.of(context).primaryColor, size: 30,),),
          StreamBuilder(
            stream: player.durationStream,
            builder: (context, snapshot) { 
              final Duration duration = snapshot.data ?? Duration.zero;
              return StreamBuilder(
                stream: player.positionStream,
                builder: (context, asyncSnapshot) {
                  final Duration position = asyncSnapshot.data ?? Duration.zero;
                  return Slider(
                  thumbColor: Theme.of(context).textTheme.labelSmall!.color,
                  activeColor: Theme.of(context).textTheme.labelSmall!.color,
                  min: 0, max: duration.inMilliseconds.toDouble(),
                  value: position.inMilliseconds.toDouble(),
                  onChanged: (value) {
                      player.seek(Duration(milliseconds: value.toInt()));
                    },
                  );
                }
              );
            }
          ),
          IconButton(onPressed: () async {
            if (player.playing) {
                player.stop();
            } else {
                player.setAudioSource(AudioSource.file(path));
                await player.play();
            }
            setState(() {
              isPlayed = !isPlayed;
            });
          }, icon: Icon(isPlayed ? Icons.stop_outlined : Icons.play_arrow_outlined, color: Theme.of(context).primaryColor, size: 30,),),
          IconButton(onPressed: () {}, icon: Icon(Icons.skip_next_outlined, color: Theme.of(context).primaryColor, size: 30,),)
        ],
      ),
    );
  }
}