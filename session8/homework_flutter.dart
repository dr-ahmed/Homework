import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final firstGridColors = [
      Colors.redAccent.shade200,
      Colors.orangeAccent.shade400,
      Colors.yellow.shade600
    ];
    final secondGridColors = [
      Colors.deepPurple.shade500,
      Colors.purple.shade400,
      Colors.deepPurple.shade400,
      Colors.purple.shade300,
      Colors.deepPurple.shade200,
      Colors.purple.shade200
    ];
    final firstGridNumbers = ['A', 'B', 'C'];
    final secondGridNumbers =
        List.generate(6, (index) => (index + 1).toString());

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            color: Colors.lightBlue[100],
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ..._buildGrid(1, 3, firstGridColors, firstGridNumbers, 55, 35),
                const SizedBox(height: 20),
                Container(
                  color: Colors.deepPurple.shade100,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child:
                              _customText('Fancy Section', Colors.deepPurple)),
                      ..._buildGrid(
                          2, 3, secondGridColors, secondGridNumbers, 50, 50),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: _customText('Info Cards', Colors.deepPurple),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: _buildColoredBoxWithTwoColors(
                          Colors.cyan.shade700, 23, 'Active'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: _buildColoredBoxWithTwoColors(
                          Colors.yellow.shade700, 15, 'Pending'),
                    ),
                    _buildColoredBoxWithTwoColors(
                        Colors.green.shade700, 7, 'Completed'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildGrid(int rows, int cols, List<Color> colors,
      List<dynamic> labels, double width, double height) {
    return List.generate(
      rows,
      (row) => Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(cols, (col) {
          final index = row * cols + col;
          return _buildColoredBox(colors[index % colors.length],
              labels[index % labels.length], width, height);
        }),
      ),
    );
  }

  Widget _buildColoredBox(
      Color color, dynamic label, double width, double height) {
    return Container(
      width: width,
      height: height,
      color: color,
      margin: const EdgeInsets.all(2),
      child: Center(
        child: _customText(label, Colors.white),
      ),
    );
  }

  Text _customText(String text, Color color) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: color,
      ),
    );
  }

  Widget _buildColoredBoxWithTwoColors(Color color, int count, String label) {
    return Container(
      width: 70,
      height: 70,
      color: Colors.white,
      margin: const EdgeInsets.all(2),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: color,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: color,
          ),
        )
      ]),
    );
  }
}
