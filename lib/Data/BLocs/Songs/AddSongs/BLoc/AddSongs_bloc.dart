import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Songs/AddSongs/BLoc/AddSongs_event.dart';
import 'package:lonefy/Data/BLocs/Songs/AddSongs/BLoc/AddSongs_state.dart';
import 'package:lonefy/Data/Models/Songs/AddedSongsModel.dart';

class AddSongsBloc extends Bloc<AddSongsState, AddSongsInitial> {
  AddSongsBloc() : super(AddSongsInitial()) {
    on<AddSongEvent>((event, emit) => addSongEventVoid(event, emit));
  }

  void addSongEventVoid(
    AddSongEvent event,
    Emitter<AddSongsInitial> emit,
  ) async {
    final box = Hive.box<AddedSongsModel>("AddSongsState");
    final currentObject = box.get("value") ?? AddedSongsModel();
    List<String?>? addedSongs = box.get("value")?.addedSongs ?? [];
    final currentEmit = AddSongsInitial();
    try {
      addedSongs.add(event.pathSong);
      await box.put("value", currentObject.copyWith(addedSongs: addedSongs));
      emit(currentEmit.copyWith(isSucces: true));
    } on HiveError catch (e) {
      debugPrint(e.toString());
      emit(currentEmit.copyWith(isSucces: false));
    }
  }
}
