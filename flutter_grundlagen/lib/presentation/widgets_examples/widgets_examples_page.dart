import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/row_expanded_example.dart';

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
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Widgets Examples"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // X achse
            crossAxisAlignment: CrossAxisAlignment.center, // Y achse
            children: const [
              ContainerTextExample(),
              SizedBox(
                height: 10,
              ),
              RowExpandedExample(),
              SizedBox(
                height: 10,
              ),
              RowExpandedExample(),
              SizedBox(
                height: 30,
              ),
              ContainerTextExample(),
            ],
          ),
        ),
      ),
    );
  }
}
