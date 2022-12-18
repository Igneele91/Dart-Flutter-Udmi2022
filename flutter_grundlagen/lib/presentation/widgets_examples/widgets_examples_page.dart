import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/container_text_example.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // X achse
          crossAxisAlignment: CrossAxisAlignment.center, // Y achse
          children: [
            const ContainerTextExample(),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            const ContainerTextExample(),
          ],
        ),
      ),
    );
  }
}
