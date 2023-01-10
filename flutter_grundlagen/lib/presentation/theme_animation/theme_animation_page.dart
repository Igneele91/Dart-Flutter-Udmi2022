import 'package:flutter/material.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(builder: (context, themeServie, child) {
      return Scaffold(
        backgroundColor: themeData.scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeData.appBarTheme.backgroundColor,
          title: const Text("Theme Animation"),
        ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 20,
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: double.infinity),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Test Heading"),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Test body")
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
