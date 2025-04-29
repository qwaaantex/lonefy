

import 'package:flutter_bloc/flutter_bloc.dart';

part 'index_page_state.dart';

class IndexPageCubit extends Cubit<IndexPageInitial> {
  IndexPageCubit() : super(IndexPageInitial(currentIndex: 0));

  void changeIndex(int index) {
    emit(IndexPageInitial(currentIndex: index));
  }
}
