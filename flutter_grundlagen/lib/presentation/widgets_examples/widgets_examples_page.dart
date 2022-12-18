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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ContainerTextExample(),
                const SizedBox(
                  height: 10,
                ),
                /*  const RowExpandedExample(),
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
                    splashColor: Colors.blue,
                    onPressed: () {
                      // ignore: avoid_print
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
                      // ignore: avoid_print
                      print("Text Button Pressed");
                    },
                    child: Container(
                        color: Colors.grey,
                        child: const Text(
                          "Text Button",
                          style: TextStyle(color: Colors.white),
                        ))),
                const SizedBox(
                  height: 30,  
                ),*/
                CustomButton(
                  buttonColor: Colors.blue[200]!,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen2");
                  },
                  text: 'Got to Screen 2',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  buttonColor: Colors.green[200]!,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen1");
                  },
                  text: 'Go to Screen 1',
                ),
                const SizedBox(
                  width: 15,
                ),
                Switch(
                    value: Provider.of<ThemeService>(context).isDarkModeOn,
                    onChanged: (value) {
                      Provider.of<ThemeService>(context, listen: false)
                          .toggleTheme();
                    })
              ],
            ),
          ),
        ));
  }
}

class Provider {}

CustomButton(
    {required Color buttonColor,
    required Null Function() onPressed,
    required String text}) {}
