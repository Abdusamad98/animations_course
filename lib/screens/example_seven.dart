import 'package:flutter/material.dart';

class ExampleSeven extends StatefulWidget {
  const ExampleSeven({Key? key}) : super(key: key);

  @override
  State<ExampleSeven> createState() => _ExampleSevenState();
}

class _ExampleSevenState extends State<ExampleSeven> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedDefaultTextStyle"),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
          style: TextStyle(
            fontSize: _fontSize,
            color: _color,
            fontWeight: FontWeight.bold,
          ),
          child: const Text(
            "Flutterni O'rganamiz",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _fontSize = _first ? 70 : 25;
            _color = _first ? Colors.blue : Colors.red;
            _first = !_first;
          });
        },
        child: Text("Press!"),
      ),
    );
  }
}
