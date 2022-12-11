import 'package:flutter/material.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            size: 30,
          ),
          centerTitle: true, // mitte legen titel
          backgroundColor: Colors.orange[700],
          title: const Text("Widgets Examples"),
        ), // AppBar
        body: const Placeholder()); // Scaffold
  }
}
