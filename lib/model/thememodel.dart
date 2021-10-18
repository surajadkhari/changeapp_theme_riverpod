import 'package:flutter/material.dart';

class ThemeModel {
  final lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey,
    ),
  );
  final darkTheme = ThemeData.dark()
      .copyWith(appBarTheme: AppBarTheme(backgroundColor: Colors.black));
}
