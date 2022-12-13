import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // Container grau1,
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
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 8,
            child: Container(
              // Container blau2
              alignment: Alignment.center, // Schatten3Deffektmit rand schwarz
              //padding: const EdgeInsets.only(bottom: 20),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                // Text davon
                "Text Example",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: "Rubrik",
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ), // das Komma für neue line merken
    );
  }
}
