import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ), // das Komma für neue line merken
    );
  }
}
