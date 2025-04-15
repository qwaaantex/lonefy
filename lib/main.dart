import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/Interface/Screens/Auth/Register.dart';
import 'package:lonefy/Interface/Theme.dart';
import 'package:lonefy/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final language = Intl.systemLocale;
  final box = await Hive.openBox("language");
  await box.put("value", language);
  runApp(LonefyMain());
  
}


class LonefyMain extends StatelessWidget {
  const LonefyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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