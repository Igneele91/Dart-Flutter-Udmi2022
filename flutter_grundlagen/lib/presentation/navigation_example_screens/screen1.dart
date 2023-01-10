import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Screen1"),
          centerTitle: true),
      body: Center(
        child: CustomButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: "Navigate Back",
            buttonColor: Colors.green),
      ),
    );
  }
}
