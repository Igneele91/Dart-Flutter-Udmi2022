import 'package:flutter/material.dart';

class CounterAppPage extends StatefulWidget {
  const CounterAppPage({Key? key}) : super(key: key);

  @override
  State<CounterAppPage> createState() => _CounterAppPageState();
}

class _CounterAppPageState extends State<CounterAppPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Material(
          elevation: 15,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: _counter < 20 ? Colors.grey : Colors.blue),
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Counter"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  _counter.toString(), // der Zahler des din
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: () => _decrementCounter(),
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () => _incrementCounter(),
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
