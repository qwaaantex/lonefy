import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'rating_state.dart';

final box = Hive.box("RatingState");

class RatingCubit extends Cubit<RatingInitial> {
  RatingCubit() : super(RatingInitial(currentRating: box.get("value", defaultValue: 0.0)));

  void changeRating(double newRating) async {
    await box.put("value", newRating);
    emit(RatingInitial(currentRating: box.get("value", defaultValue: 0.0)));
  }
}
