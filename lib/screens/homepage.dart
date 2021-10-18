import 'package:app_theme_riverpod/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Theme'),
      ),
      body: Center(
        child: Consumer(builder: (context, watch, child) {
          // bool currentvalue = watch(themeProvider);

          bool curretValueState = watch(themeStateProvider).state;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ElevatedButton(
              //     onPressed: () {
              //       context.read(themeProvider.notifier).changeTheme();
              //     },
              //     child: Text("Change Mode"))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Light Mode"),
                  Switch(
                      value: (curretValueState),
                      onChanged: (val) =>
                          // context.read(themeProvider.notifier).changeTheme()),
                          context.read(themeStateProvider).state = val),
                  Text("Dark Mode"),
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}
