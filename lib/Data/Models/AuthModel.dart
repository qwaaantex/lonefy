
import 'package:hive/hive.dart';

part 'Hive/AuthModel.g.dart';

@HiveType(typeId: 4)
class AuthModel {
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  AuthModel({required this.email, required this.password});
}