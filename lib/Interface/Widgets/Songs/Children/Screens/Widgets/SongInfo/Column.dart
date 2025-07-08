import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/Container.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/Image.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/Slider.dart';

class SongInfoColumn extends StatelessWidget {
  final String author;
  final String name;
  const SongInfoColumn({super.key, required this.author, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SongInfoChildrenImage(),
        SizedBox(height: 15,),
        Center(child: SongInfoChildrenContainer(author: author, name: name,)),
        SizedBox(height: 15,),
        SongInfoChildrenSlider()
    ],);
  }
}