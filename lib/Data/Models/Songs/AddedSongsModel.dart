import 'package:hive/hive.dart';
part '../Hive/AddedSongsModel.g.dart';

@HiveType(typeId: 6)
class AddedSongsModel {
  @HiveField(0)
  List<String?>? addedSongs;
  List<String?>? addedSongsAuthor;
  AddedSongsModel({this.addedSongs, this.addedSongsAuthor});

  AddedSongsModel copyWith({List<String?>? addedSongs, List<String?>? addedSongsAuthor}) {
    return AddedSongsModel(addedSongs: addedSongs ?? this.addedSongs, addedSongsAuthor: addedSongsAuthor ?? this.addedSongsAuthor);
  }
}
