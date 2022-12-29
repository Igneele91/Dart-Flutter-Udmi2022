import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/page_view_exmaple.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/rectangular_image.dart';
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
        backgroundColor: Colors.pink[200],
        title: const Text("Widgets Examples"),
      ),
      body: SingleChildScrollView(
        physics:
            const BouncingScrollPhysics(), // Nimmt beim Scrollen den effekt weg blau
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // X achse
            crossAxisAlignment: CrossAxisAlignment.center, // Y achse
            children: [
              const ContainerTextExample(),
              const SizedBox(
                height: 10,
              ),
              const RowExpandedExample(),
              const SizedBox(
                height: 30,
              ),
              const ProfilePicture(),
              const SizedBox(
                height: 30,
              ),
              const RectImage(),
              const SizedBox(
                height: 30,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 30,
              ),
              const PageViewExample(),
              const SizedBox(
                height: 30,
              ),
              IconButton(
                  // Button mit einem Symbol
                  onPressed: () {
                    print("Icon Button pressed!");
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    print("Text Button Pressed ");
                  },
                  child: Container(
                      color: Colors.purple,
                      child: const Text(
                        "Text Button",
                        style: TextStyle(color: Colors.white),
                      ))),
              const SizedBox(
                height: 30,
              ),
              CustomButton( // wenn er die farbe nicht findet ! wegen null verwende
                buttonColor: Colors.orange[200]!,
                  onPressed: () {
                    print("Custom Button Pressed 1!");
                  },
                  text: 'Button 1'),
              const SizedBox(
                height: 30,
              ),
              CustomButton( // wenn er die farbe nicht findet ! wegen null verwende
                buttonColor: Colors.green[200]!,
                onPressed: () {
                  print("Custom Button Pressed 2! ");
                },
                text: 'Button 2',
              )
            ],
          ),
        ),
      ),
    );
  }
}
