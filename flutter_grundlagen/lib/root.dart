import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/counter_app/widgets/counter_app_page.dart';
import 'package:flutter_grundlagen/presentation/theme_animation/theme_animation_page.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetsExamplesPage(),
          CounterAppPage(),
          ThemeAnimationPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "examples"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
            BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: "theme"),
          ]),
    );
  }
}
