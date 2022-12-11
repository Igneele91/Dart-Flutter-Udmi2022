import 'package:flutter/material.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundcolor: Colors.grey[900],
        appBar: AppBar(
          title: Text("my app FF"),
        ), // AppBar
        body: Placeholder()); // Scaffold
  }
}
