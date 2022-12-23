import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          height: 250,
          width: 200,
          color: Colors.blue,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage("assets/images/FoxRightSide.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
