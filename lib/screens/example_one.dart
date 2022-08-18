import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController basketAnimationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    basketAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    basketAnimationController.addListener(() {
      setState(() {});
    });
    basketAnimationController.forward();
    animation = Tween<double>(begin: 2*pi, end: 0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        print("ANIMATION STATUS:$status");
      });



    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    basketAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform.rotate"),
        actions: [
          Transform.rotate(
            angle: Tween<double>(begin: 0, end: 2 * pi)
                .animate(basketAnimationController)
                .value,
            child: IconButton(
              onPressed: () {
                animationController.reverse();
              },
              icon: const Icon(
                Icons.shopping_basket_rounded,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: const Icon(
            Icons.add_box,
            color: Colors.blue,
            size: 150,
          ),
        ),
      ),
    );
  }
}
