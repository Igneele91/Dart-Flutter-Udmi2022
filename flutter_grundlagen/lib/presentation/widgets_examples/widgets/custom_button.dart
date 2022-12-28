import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const CustomButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            // Text in der Mittte einfach Child und dan Center widget
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue[200]),
        child: const Center(
            child: Text(
          "Text",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        )),
      ),
    );
  }
}
