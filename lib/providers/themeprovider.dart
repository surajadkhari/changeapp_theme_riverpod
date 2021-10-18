import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Using StateNotifer
class Themenotifer extends StateNotifier<bool> {
  Themenotifer() : super(false);

  bool changeTheme() => state = !state;
}

final themeProvider =
    StateNotifierProvider<Themenotifer, bool>((ref) => Themenotifer());

//Using StateProvider no need to make class
final themeStateProvider = StateProvider<bool>((ref) => false);
