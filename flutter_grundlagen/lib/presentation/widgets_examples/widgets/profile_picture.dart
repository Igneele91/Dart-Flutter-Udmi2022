import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SizedBox(
          height: 230,
          width: 200,

          child: Stack(
            children: [
              const SizedBox(
                height: 200,
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage("assets/images/fox_design-1.jpg"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(

                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7), // durchsichtigkeit
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Text("Flutter Freelancer"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
