import 'package:flutter/material.dart';

enum Themes { dark, light }

final themes = {
  Themes.dark: ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  Themes.light: ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
  ),
};
