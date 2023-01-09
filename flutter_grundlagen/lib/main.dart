import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/counter_app/widgets/counter_app_page.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets_examples_page.dart';
import 'package:flutter_grundlagen/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RootWidget()
    );
  }
}
