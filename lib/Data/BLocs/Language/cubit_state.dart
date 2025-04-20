
import 'package:hive/hive.dart';
part 'cubit_state.g.dart';

@HiveType(typeId: 1)
class LanguageMetrics {
  @HiveField(0)
  final String currentLanguage;

  LanguageMetrics({required this.currentLanguage});
}