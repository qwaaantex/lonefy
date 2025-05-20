import 'package:hive/hive.dart';

@HiveType(typeId: 6)

class AddedSongsModel {
  
  @HiveField(0)
  List<String?> addedSongs;

  AddedSongsModel({required this.addedSongs});

  AddedSongsModel copyWith({
    List<String?>? addedSongs,
  }) {
    return AddedSongsModel(
      addedSongs: addedSongs ?? this.addedSongs);
  }
}