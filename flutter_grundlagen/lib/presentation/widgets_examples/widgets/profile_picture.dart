import 'package:flutter/material.dart';

class ProfilePicutre extends StatelessWidget {
  const ProfilePicutre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: const CircleAvatar(
              radius: 200,
              backgroundImage:
                  AssetImage("assets/images/Hotpotprofilbildai.png")),
        ),
      ),
    );
  }
}
