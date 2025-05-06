part of 'status_cubit.dart';

abstract class StatusState {}

final class StatusInitial extends StatusState {
  final String? StatusState;
  StatusInitial({required this.StatusState});
}
