import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SongInfoChildrenSlider extends StatefulWidget {
  final int index;
  const SongInfoChildrenSlider({super.key, required this.index});

  @override
  State<SongInfoChildrenSlider> createState() => _SongInfoChildrenSliderState();
}

class _SongInfoChildrenSliderState extends State<SongInfoChildrenSlider> {
  final AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    double value = 0;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous_outlined, color: Theme.of(context).primaryColor, size: 30,),),
          Slider(
            thumbColor: Theme.of(context).textTheme.labelSmall!.color,
            activeColor: Theme.of(context).textTheme.labelMedium!.color,
            value: value, onChanged: (values) {
            setState(() {
              value = values;
            });
            }),
          IconButton(onPressed: () async {
            
          }, icon: Icon(Icons.play_arrow_outlined, color: Theme.of(context).primaryColor, size: 30,),),
          IconButton(onPressed: () {}, icon: Icon(Icons.skip_next_outlined, color: Theme.of(context).primaryColor, size: 30,),)
        ],
      ),
    );
  }
}