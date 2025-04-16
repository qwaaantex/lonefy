import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/Data/BLocs/Register/bloc_bloc.dart';
import 'package:lonefy/Data/BLocs/Register/bloc_state.dart';
import 'package:lonefy/Interface/Screens/Auth/Register.dart';
import 'package:lonefy/Interface/Theme.dart';
import 'package:lonefy/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final language = Intl.systemLocale;
  await Hive.openBox("language");
  runApp(LonefyMain(language: language,));
}

class LonefyMain extends StatelessWidget {
  final language;
  const LonefyMain({super.key, this.language});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => RegisterCubit(language))
    ], child:
    BlocBuilder<RegisterCubit, RegisterBlocMetrics>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeLight(),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: Intl.defaultLocale == null ? Locale(Hive.box("language").get("value")) :
          Locale(state.currentLanguage ?? "en"),
          darkTheme: themeDark(),
          themeMode: ThemeMode.system,
          home: RegisterScreen(),
        );
      },
    ));
  }
}
