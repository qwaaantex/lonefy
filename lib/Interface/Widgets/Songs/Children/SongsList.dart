import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lonefy/Data/Models/Songs/AddedSongsModel.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/SnackBarSongs.dart';
import 'package:path/path.dart';

class SongsChildrenSongsList extends StatefulWidget {
  const SongsChildrenSongsList({super.key});

  @override
  State<SongsChildrenSongsList> createState() => _SongsChildrenSongsListState();
}

class _SongsChildrenSongsListState extends State<SongsChildrenSongsList>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Box<AddedSongsModel> currentList = Hive.box<AddedSongsModel>(
      "AddSongsState",
    );
    final information = currentList.get("value");
    return information?.addedSongs?.length == null
        ? SizedBox.shrink()
        : SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemCount: currentList.get("value")!.addedSongs!.length,
            itemBuilder: (context, index) {
              final path = currentList.get("value")!.addedSongs![index]!;
              final name = basename(path);
              final author = currentList.get("value")!.addedSongsAuthor?[index] ?? "System";
              return GestureDetector(
                onTap: () {
                  context.router.navigate(SongsChildrenRoutesSongsInfoRoute(author: author, name: name, index: index));
                },
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    HugeIcons.strokeRoundedFileUnknown,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(name, style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
                              Text(author, style: TextStyle(color: Colors.black, fontSize: 14))
                            ],
                          ),
                          IconButton(
                            onPressed: () async {
                              await player.setAudioSource(AudioSource.file(path));
                              player.play();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Theme.of(context).primaryColor,
                                  duration:
                                      player.duration ?? Duration(seconds: 5),
                                  content: SongsChildrenSnackBar(
                                    author: author,
                                    name: name,
                                    player: player,
                                    index: index,
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              HugeIcons.strokeRoundedPlay,
                              color: Theme.of(context).primaryColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
  }
}
