
abstract class AddSongsState {}

class AddSongsInitial {
  bool? isSucces;
  AddSongsInitial({this.isSucces});

  AddSongsInitial copyWith({
    bool? isSucces,
  }) {
    return AddSongsInitial(
      isSucces: isSucces ?? this.isSucces
    );
  }
}