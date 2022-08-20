import 'dart:math';

import 'package:flutter/material.dart';

class ExampleFourth extends StatefulWidget {
  const ExampleFourth({Key? key}) : super(key: key);

  @override
  State<ExampleFourth> createState() => _ExampleFourthState();
}

class _ExampleFourthState extends State<ExampleFourth>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late Animation animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn,
    );

    animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(curvedAnimation);
    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transform.rotate"),
        ),
        body: Center(
          child: Transform.rotate(
            angle: animation.value,
            child: Center(
              child: Image.asset("assets/images/car.png"),
            ),
          ),
        ));
  }
}
