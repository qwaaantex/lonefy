import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/Back.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/ShareSong.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/Time.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Column.dart';


@RoutePage()
class SongsChildrenScreensSongsInfoScreen extends StatefulWidget {
  final String author;
  final String name;
  final int index;
  const SongsChildrenScreensSongsInfoScreen({super.key, required this.author, required this.name, required this.index});

  @override
  State<SongsChildrenScreensSongsInfoScreen> createState() => _SongsChildrenScreensSongsInfoScreenState();
}

class _SongsChildrenScreensSongsInfoScreenState extends State<SongsChildrenScreensSongsInfoScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).scaffoldBackgroundColor,
        surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
        leading: SongInfoChildrenBack(),
        actions: [
          SongInfoChildrenShareSong()
        ],
        title: SongInfoChildrenTime(),
        centerTitle: true,
      ),
      body: SongInfoColumn(author: widget.author, name: widget.name, index: widget.index,),
    );
  }
}