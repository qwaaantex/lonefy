import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

themeLight() {
  return ThemeData(
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: Colors.black,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black, selectionColor: Colors.transparent.withOpacity(0.15), selectionHandleColor: Colors.black),
    colorSchemeSeed: Colors.blueAccent,
    hintColor: Colors.tealAccent.shade700, // поля ввода рег/вход
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black, fontSize: 42, fontFamily: 'lonefyBold'))
  );
}

themeDark() {
  return ThemeData(
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: Colors.white,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white, selectionColor: Colors.transparent.withOpacity(0.15), selectionHandleColor: Colors.white),
    colorSchemeSeed: Colors.blueAccent,
    hintColor: Colors.tealAccent.shade700, // поля ввода рег/вход
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white, fontSize: 42, fontFamily: 'lonefyBold'))

  );
}