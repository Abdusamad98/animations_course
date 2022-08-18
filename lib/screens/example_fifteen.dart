import 'package:flutter/material.dart';

class ExampleFifteen extends StatefulWidget {
  const ExampleFifteen({Key? key}) : super(key: key);

  @override
  State<ExampleFifteen> createState() => _ExampleFifteenState();
}

class _ExampleFifteenState extends State<ExampleFifteen>
    with TickerProviderStateMixin {
  late Animation<Decoration> decorationTween;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    decorationTween = DecorationTween(
      begin: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(60.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color(0x66666666),
            blurRadius: 10.0,
            spreadRadius: 3.0,
            offset: Offset(0, 6.0),
          )
        ],
      ),
      end: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.zero,
        // No shadow.
      ),
    ).animate(_controller);


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBoxTransition"),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween,
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
