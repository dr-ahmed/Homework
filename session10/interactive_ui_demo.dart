import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  Color outsideColor = Colors.purple;
  double _textSize = 18;

  final List<Color> colorsList = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.brown,
    Colors.cyan,
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeColor() {
    final random = Random();
    setState(() {
      outsideColor = colorsList[random.nextInt(colorsList.length)];
    });
  }

  void _changeTextSize() {
    setState(() {
      _textSize = _textSize == 18 ? 24 : 18;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Interactive UI Demo",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: outsideColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [outsideColor, Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: outsideColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  _counter % 2 == 0 ? "Even: $_counter" : "Odd: $_counter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: _textSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("Counter Value",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: outsideColor)),
            Text(
              "$_counter",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: outsideColor),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _changeColor,
                  icon: const Icon(Icons.color_lens),
                  label: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Change Color"),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: _changeTextSize,
                  icon: const Icon(Icons.text_fields),
                  label: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Change Size"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: outsideColor,
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: const Text(
          'Increment',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
