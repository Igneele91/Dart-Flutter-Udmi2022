import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/counter_app/widgets/counter_app_page.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,
        children: [
          WidgetsExamplesPage(),
          CounterAppPage()
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
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "examples"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
        ],
      ),
    );
  }
}
