import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

themeLight() {
  return ThemeData(
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: Colors.black,
    ),
    primaryColor: Colors.indigoAccent.shade700,
    cardColor: Colors.indigoAccent.shade700.withOpacity(0.2),
    canvasColor: Colors.transparent.withOpacity(0.25),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white, selectionColor: Colors.transparent.withOpacity(0.15), selectionHandleColor: Colors.black),
    hintColor: Colors.tealAccent.shade700, // поля ввода рег/вход
    textTheme: TextTheme(
      titleMedium: TextStyle(color: Colors.black, fontSize: 42, fontFamily: 'lonefyBold'), 
      bodySmall: TextStyle(color: Colors.black, fontSize: 16),
      titleSmall: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      labelMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      labelSmall: TextStyle(color: Colors.indigoAccent.shade700, fontWeight: FontWeight.bold, fontSize: 15),
      headlineMedium: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)
      )
  );
}

themeDark() {
  return ThemeData(
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: Colors.white,
    ),
    cardColor: Colors.indigoAccent.shade700.withOpacity(0.2),
    primaryColor: Colors.indigoAccent.shade700,
    canvasColor: Colors.transparent.withOpacity(0.25),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white, selectionColor: Colors.transparent.withOpacity(0.15), selectionHandleColor: Colors.white),
    hintColor: Colors.tealAccent.shade700, // поля ввода рег/вход
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white, fontSize: 42, fontFamily: 'lonefyBold'),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)
    )

  );
}