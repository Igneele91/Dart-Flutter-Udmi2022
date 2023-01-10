import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Screen2"),
          centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: "Navigate Back",
                buttonColor: Colors.brown),
            SizedBox(height: 50,), /* eine Abstandbox dazwischen */
            CustomButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/screen1");
                },
                text: "Go to Screen1",
                buttonColor: Colors.brown),
          ],
        ),
      ),
    );
  }
}
