
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Songs/ContainsSongs/BLoc/ContainsSongs_event.dart';
import 'package:lonefy/Data/BLocs/Songs/ContainsSongs/BLoc/ContainsSongs_state.dart';

class ContainsSongsBloc extends Bloc<ContainsSongsState, ContainsSongsInitial> {
  ContainsSongsBloc() : super(ContainsSongsInitial()) {
    on<ContainsSongsEvent>((event, emit) => containsSongsEventFunction(event, emit));
  }
  
  void containsSongsEventFunction(ContainsSongsEvent event, Emitter<ContainsSongsInitial> emit) {
    
  }
}