import 'package:flutter/material.dart';

class RectImage extends StatelessWidget {
  const RectImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/images/fox-squirrel.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
