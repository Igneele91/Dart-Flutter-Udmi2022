import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/counter_app/widgets/counter_app_page.dart';
import 'package:flutter_grundlagen/presentation/navigation_example_screens/screen1.dart';
import 'package:flutter_grundlagen/presentation/navigation_example_screens/screen2.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets_examples_page.dart';
import 'package:flutter_grundlagen/root.dart';
import 'package:flutter_grundlagen/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode:
          themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder> {
          "/root" : (BuildContext countext) => RootWidget(),
          "/screen1" : (BuildContext countext) => Screen1(),
          "/screen2" : (BuildContext countext) => Screen2(),

        },
        home: RootWidget()
    );
  }
}
