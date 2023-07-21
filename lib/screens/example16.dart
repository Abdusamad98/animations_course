import 'package:flutter/material.dart';

class ExampleSixteen extends StatefulWidget {
  const ExampleSixteen({Key? key}) : super(key: key);

  @override
  State<ExampleSixteen> createState() => _ExampleSixteenState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ExampleSixteenState extends State<ExampleSixteen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _styleTween;
  late CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    );
    _styleTween = TextStyleTween(
      begin: const TextStyle(
          fontSize: 50, color: Colors.blue, fontWeight: FontWeight.w900),
      end: const TextStyle(
          fontSize: 100, color: Colors.red, fontWeight: FontWeight.w100),
    ).animate(_curvedAnimation);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DefaultTextStyleTransition "),),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _styleTween,
          child: const Text('Flutter'),
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
