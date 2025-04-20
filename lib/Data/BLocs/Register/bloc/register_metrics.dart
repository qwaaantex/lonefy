
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_bloc.dart';
part 'register_metrics.g.dart';

@HiveType(typeId: 1)
final class RegisterInitial extends RegisterState {
  @HiveField(0)
  final bool succes;
  @HiveField(1)
  final bool? isLogged;
  RegisterInitial({required this.succes, this.isLogged});
}