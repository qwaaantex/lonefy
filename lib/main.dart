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
import 'package:lonefy/Data/Models/LoggingModel.dart';
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
    await Hive.openBox<LoggingModel>("Logged");
    if (box.get("value") == null) {
      await box.put("value", LanguageMetrics(currentLanguage: language));
    }
    Client client = Client();
    client
    .setEndpoint('https://fra.cloud.appwrite.io/v1')
    .setProject('67fdbc7600141c6c18d9')
    .setSelfSigned(status: true);
    runApp(LonefyMain(language: language, client: client,));
  } catch (e) {
    print(e);
  }
}



class LonefyMain extends StatelessWidget {

  final dynamic language;
  final Client client;
  LonefyMain({super.key, this.language, required this.client});
  final appRouter = lonefyRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterProvider())
      ],
      child: Builder(
        builder: (context) {
          final provider = context.read<RegisterProvider>();
          return MultiBlocProvider(providers: [
            BlocProvider(create: (context) => LanguageCubit(language)),
            BlocProvider(create: (context) => RegisterBloc(client, provider.email, provider.password))
          ], child:
          BlocBuilder<LanguageCubit, LanguageMetrics>(
            builder: (context, state) {
              return Builder(
          
                builder: (context) {
                  return MaterialApp.router(
                    key: _appKey,
                    routerConfig: appRouter.config(navRestorationScopeId: '/'),
                    
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
          ));
        }
      ),
    );
  }
}
