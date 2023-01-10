import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Screen2"),
          centerTitle: true),
      body: Center(
        child: CustomButton(
            onPressed: () {},
            text: "Navigate Back",
            buttonColor: Colors.yellow),
      ),
    );
  }
}
