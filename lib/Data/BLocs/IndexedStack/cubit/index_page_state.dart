part of 'index_page_cubit.dart';

abstract class IndexPageState {}

final class IndexPageInitial extends IndexPageState {
  final int currentIndex;
  IndexPageInitial({required this.currentIndex});
}
