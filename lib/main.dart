import 'package:appwrite/appwrite.dart';
import 'dart:ui' as flutter_ui;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_cubit.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_bloc.dart';
import 'package:lonefy/Data/Providers/Register/Provider.dart';
import 'package:lonefy/Interface/Routes/Router.dart';
import 'package:lonefy/Interface/Theme.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:provider/provider.dart';

final _appKey = GlobalKey();

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(LanguageMetricsAdapter());
    }
    final language = Intl.systemLocale.split("_").first;
    final box = await Hive.openBox<LanguageMetrics>("language");
    if (Intl.defaultLocale == null) {
      await box.put("value", LanguageMetrics(currentLanguage: language));
    }
    Client client = Client();
    client
    .setEndpoint('https://fra.cloud.appwrite.io/v1')
    .setProject('67fdbc7600141c6c18d9')
    .setSelfSigned(status: true);
    final account = Account(client);
    runApp(LonefyMain(language: language, account: account,));
  } catch (e) {
    print(e);
  }
}



class LonefyMain extends StatefulWidget {
  final dynamic language;
  final Account account;
  const LonefyMain({super.key, this.language, required this.account});

  @override
  State<LonefyMain> createState() => _LonefyMainState();
}

class _LonefyMainState extends State<LonefyMain> {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterProvider())
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => LanguageCubit(widget.language)),
        BlocProvider(create: (context) => RegisterBloc(widget.account))
      ], child:
      BlocBuilder<LanguageCubit, LanguageMetrics>(
        builder: (context, state) {
          return Builder(

            builder: (context) {
              return MaterialApp.router(
                key: _appKey,
                routerConfig: lonefyRouter().config(navRestorationScopeId: '/'),
                
                debugShowCheckedModeBanner: false,
                theme: themeLight(),
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                darkTheme: themeDark(),
                locale: flutter_ui.Locale(Hive.box<LanguageMetrics>("language").get("value")?.currentLanguage ?? 'en'),
                    
                themeMode: ThemeMode.system,
                
              );
            }
          );
        },
      )),
    );
  }
}
