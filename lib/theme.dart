import 'package:flutter/material.dart';

class Theme {
  final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black)),
  );

  final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white)),
  );
}
