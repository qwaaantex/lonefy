import 'package:lonefy/Data/BLocs/Songs/ContainsSongs/BLoc/ContainsSongs_state.dart';

class ContainsSongsEvent extends ContainsSongsState {
  final String name;
  ContainsSongsEvent({required this.name});
}