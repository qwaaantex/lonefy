
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'status_state.dart';

Box box = Hive.box("StatusState");

class StatusCubit extends Cubit<StatusInitial> {
  StatusCubit() : super(StatusInitial(StatusState: box.get("value", defaultValue: null)));

  void changeStatus(String newStatus) async {
    await box.put("value", newStatus);
    emit(StatusInitial(StatusState: box.get("value", defaultValue: null)));
  }
}
