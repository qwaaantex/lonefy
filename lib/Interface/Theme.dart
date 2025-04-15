import 'package:flutter/material.dart';

themeLight() {
  return ThemeData(
    colorSchemeSeed: Colors.blueAccent,
    hintColor: Colors.tealAccent.shade700, // поля ввода рег/вход
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black, fontSize: 42, fontFamily: 'lonefyBold'))
  );
}

themeDark() {
  return ThemeData(
    colorSchemeSeed: Colors.blueAccent,
    hintColor: Colors.tealAccent.shade700, // поля ввода рег/вход
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white, fontSize: 42, fontFamily: 'lonefyBold'))

  );
}