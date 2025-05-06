part of 'rating_cubit.dart';

abstract class RatingState {}

final class RatingInitial extends RatingState {
  final double currentRating;
  RatingInitial({required this.currentRating});
}
