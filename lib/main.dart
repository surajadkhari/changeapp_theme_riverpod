import 'package:app_theme_riverpod/model/thememodel.dart';
import 'package:app_theme_riverpod/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/homepage.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeModel().lightTheme,
      darkTheme: ThemeModel().darkTheme,
      themeMode: watch(themeProvider) ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
