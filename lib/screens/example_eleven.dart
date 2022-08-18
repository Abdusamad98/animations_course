import 'package:flutter/material.dart';

class ExampleEleven extends StatefulWidget {
  const ExampleEleven({Key? key}) : super(key: key);

  @override
  State<ExampleEleven> createState() => _ExampleElevenState();
}

class _ExampleElevenState extends State<ExampleEleven> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPhysicalModel"),
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          elevation: _first ? 0 : 10.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          borderRadius: _first
              ? const BorderRadius.all(Radius.circular(0))
              : const BorderRadius.all(Radius.circular(300)),
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child:const FlutterLogo(size: 60),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _first = !_first;
          });
        },
        child: const Text('Physical'),
      ),
    );
  }
}
