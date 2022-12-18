import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellow,
          height: 100,
          width: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1, // die flex 1 bekommt weniger
          child: Container(
            color: Colors.green,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2, // die flex 2 mehr
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.yellow,
          height: 100,
          width: 50,
        ),
      ],
    );
  }
}
