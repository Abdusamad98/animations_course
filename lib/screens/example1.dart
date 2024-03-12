import 'dart:math';
import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = Tween<double>(begin: 0, end: 4 * pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        reverseCurve: Curves.linear,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform.rotate"),
        actions: [
          IconButton(
            onPressed: () {
              animationController.reverse();
            },
            icon: const Icon(
              Icons.shopping_basket_rounded,
              size: 30,
            ),
          ),
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
