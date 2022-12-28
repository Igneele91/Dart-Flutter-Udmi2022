import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2, // Box Grosse grau
      child: PageView(
        controller: PageController(viewportFraction: 0.95),
        children: [
          Padding(  // Container 1
            padding: const EdgeInsets.only(right: 8.0),
            child: SingelPage(
              size: size,
              title: 'Katze',
              text: 'Katze frisst die Maus',
            ),
          ),

          Padding( //Container 2
            padding: const EdgeInsets.only(right: 8.0),
            child: SingelPage(
              size: size,
              title: 'Jaguar jagt einen Hase',
              text: 'Der Hase schmekte dem Jaguar',
            ),
          ),

          Padding( // Container 3
            padding: const EdgeInsets.only(right: 8.0),
            child: SingelPage(
              size: size,
              title: 'Hunde sind Doff',
              text: 'Das Krokodil liegt im Fluss sdnfjnsjkdfnjksnfjknbsdfjk jsdfnjsnfdjsn',
            ),
          ),

          // Controller,
        ],
      ),
    );
  }
}

class SingelPage extends StatelessWidget {
  final Size size;
  final String title;
  final String text;
  const SingelPage(
      {Key? key, required this.size, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.85,
      decoration: BoxDecoration(
          color: Colors.grey[700], borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
