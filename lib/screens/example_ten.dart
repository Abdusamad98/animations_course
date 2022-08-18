import 'package:flutter/material.dart';

class ExampleTen extends StatefulWidget {
  const ExampleTen({Key? key}) : super(key: key);

  @override
  State<ExampleTen> createState() => _ExampleTenState();
}

class _ExampleTenState extends State<ExampleTen> {
  double padValue = 0.0;

  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPadding"),
      ),
      body: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.bounceIn,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("assets/images/car.png"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
        },
        child: const Text('Pad'),
      ),
    );
  }
}
