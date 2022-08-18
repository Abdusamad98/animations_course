import 'package:flutter/material.dart';

class ExampleSix extends StatefulWidget {
  const ExampleSix({Key? key}) : super(key: key);

  @override
  State<ExampleSix> createState() => _ExampleSixState();
}

class _ExampleSixState extends State<ExampleSix>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> heightAnimation;
  late Animation<double> widthAnimation;
  late Animation<double> textSizeAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    widthAnimation =
        Tween<double>(begin: 120, end: 200).animate(animationController);
    textSizeAnimation =
        Tween<double>(begin: 14, end: 50).animate(animationController);
    heightAnimation =
        Tween<double>(begin: 50, end: 200).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Twin"),
      ),
      body: Center(
        child: Container(
          height: heightAnimation.value,
          width: widthAnimation.value,
          color: colorAnimation.value,
          child: Center(
            child: Text(
              "Hormanglar",
              style: TextStyle(
                color: Colors.white,
                fontSize: textSizeAnimation.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
