import 'package:flutter/material.dart';

class ExampleTwelve extends StatefulWidget {
  const ExampleTwelve({Key? key}) : super(key: key);

  @override
  State<ExampleTwelve> createState() => _ExampleTwelveState();
}

class _ExampleTwelveState extends State<ExampleTwelve> {
  double _size = 100.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 350.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSize"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _updateSize(),
          child: Container(
            color: Colors.amberAccent,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
