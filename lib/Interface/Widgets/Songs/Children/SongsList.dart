import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lonefy/Data/Models/Songs/AddedSongsModel.dart';
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
        ? CircularProgressIndicator()
        : SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: currentList.get("value")!.addedSongs!.length,
            itemBuilder: (context, index) {
              final path = currentList.get("value")!.addedSongs![index]!;
              final name = basename(path);
              return Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.05,
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
                              child: Icon(
                                HugeIcons.strokeRoundedFileUnknown,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Text(name),
                        IconButton(
                          onPressed: () async {
                            await player.setAudioSource(AudioSource.file(path));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration:
                                    player.duration ?? Duration(seconds: 5),
                                content: SongsChildrenSnackBar(
                                  name: name,
                                  player: player,
                                ),
                              ),
                            );
                          },
                          icon: Icon(
                            HugeIcons.strokeRoundedPlay,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
  }
}
