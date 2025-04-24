import 'dart:ui' as flutter_ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';
import 'package:lonefy/Interface/Theme.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:lonefy/main.dart';

class LonefySubMain extends StatelessWidget {
  final GlobalKey appKey;
  const LonefySubMain({super.key, required this.appKey});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
                    key: appKey,
                    routerConfig: appRouter.config(),
                    
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
}