import 'package:lonefy/Data/BLocs/Songs/AddSongs/BLoc/AddSongs_state.dart';

class AddSongEvent extends AddSongsState {
  String pathSong;
  AddSongEvent({required this.pathSong});
}