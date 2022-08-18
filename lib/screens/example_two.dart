import 'package:flutter/material.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  bool isBigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("AnimatedContainer"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                height: isBigger? 500:100,
                width: isBigger ? 500 : 100,
                 duration: const Duration(seconds: 3),
                 curve: Curves.bounceIn,
                decoration: BoxDecoration(
                  gradient:
                    // LinearGradient(
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    //   colors: [
                    //     Colors.red,
                    //     Colors.yellow
                    //   ]
                    // )
                  RadialGradient(
                    radius: 0.5,
                    colors: const [
                      Colors.green,
                      Colors.white,
                    ],
                    stops: [isBigger ? 0.8 : 0.2, 1.0],
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/images/car.png"),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  isBigger = !isBigger;
                  setState(() {});
                },
                child:
                    isBigger ? const Text("Decrease") : const Text("Increase"))
          ],
        ));
  }
}
