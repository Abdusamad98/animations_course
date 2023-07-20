import 'package:flutter/material.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  _ExampleFiveState createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;
  late Animation borderSizeAnimation;

  @override
  void initState() {
    super.initState();

    // Defining controller with animation duration of two seconds
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    // Defining both color and size animations
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green).animate(controller);

    sizeAnimation = Tween<double>(begin: 100.0, end: 300.0).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn,
    ))..addListener(() {
      print("CONTROLLER VALUE: ${controller.value}");
    });
    borderSizeAnimation = Tween<double>(begin: 5.0, end: 50.0).animate(controller);

    // Rebuilding the screen when animation goes ahead
    controller.addListener(() {
      setState(() {});
    });

    // Repeat the animation after finish
    controller.repeat(reverse: true);

    //Bir martalik animation
    //controller.forward();

    //Reverses the animation instead of starting it again and repeats
    //controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation.value,
          width: sizeAnimation.value,
          decoration: BoxDecoration(
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(borderSizeAnimation.value),
          ),
        ),
      ),
    );
  }
}
