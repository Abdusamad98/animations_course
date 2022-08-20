import 'dart:math';

import 'package:flutter/material.dart';

class ExampleEighteen extends StatefulWidget {
  const ExampleEighteen({Key? key}) : super(key: key);

  @override
  State<ExampleEighteen> createState() => _ExampleEighteenState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ExampleEighteenState extends State<ExampleEighteen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat()..addListener(() {
    print("CONTROLLER VALUE:${_controller.value}");
  });

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.green,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset("assets/images/car.png"),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
