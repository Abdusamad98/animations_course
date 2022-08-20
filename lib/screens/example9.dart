import 'package:flutter/material.dart';

class ExampleNine extends StatefulWidget {
  const ExampleNine({Key? key}) : super(key: key);

  @override
  State<ExampleNine> createState() => _ExampleEightState();
}

class _ExampleEightState extends State<ExampleNine> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedOpacity"),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          curve: Curves.decelerate,
          child: const FlutterLogo(
            size: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeOpacity,
        child: const Text('Fade'),
      ),
    );
  }
}
