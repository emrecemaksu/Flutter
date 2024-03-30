import 'package:flutter/material.dart';

class LightTheme {
  final _LightColor _lightColor = _LightColor();
  late ThemeData themeData;
  //Debug modda finali kaldır late final Th...
  LightTheme() {
    _LightColor();
    themeData = ThemeData(
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        checkboxTheme: const CheckboxThemeData(fillColor: MaterialStatePropertyAll(Colors.green)),
        appBarTheme: AppBarTheme(
            backgroundColor: _lightColor.biscayGreen,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)))),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.biscayGreen)),
        colorScheme: const ColorScheme.light(),
        textTheme:
            ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(fontSize: 20, color: _lightColor._textColor)));
  }
}

class _LightColor {
  //Bu şekilde isimlendirme
  final Color _textColor = const Color.fromARGB(255, 27, 25, 25);
  final Color biscayGreen = const Color.fromARGB(84, 205, 167, 1);
}