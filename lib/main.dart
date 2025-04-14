import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/Interface/Screens/Auth/Register.dart';
import 'package:lonefy/Interface/Theme.dart';
import 'package:lonefy/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeLanguage();
  runApp(LonefyMain());
  
}

void initializeLanguage() async {
  final language = Intl.systemLocale;
  final box = await Hive.openBox("language");
  print(language);
  box.put("value", language);
  box.close();
}

class LonefyMain extends StatelessWidget {
  const LonefyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeLight(),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      darkTheme: themeDark(),
      themeMode: ThemeMode.system,
      home: RegisterScreen(
      ),
    );
  }
}