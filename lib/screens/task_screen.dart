import 'dart:math';

import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<Color?> colorAnimation;
  int count = 4;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(begin: 25, end: 50).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        }
      });

    colorAnimation = ColorTween(begin: Colors.white, end: Colors.red)
        .animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task"),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  size: animation.value,
                  color: colorAnimation.value,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            animationController.forward();
            setState(() {});
          },
          child: const Text("Press me"),
        ),
      ),
    );
  }
}

//
// class TaskScreen extends StatefulWidget {
//   const TaskScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TaskScreen> createState() => _TaskScreenState();
// }
//
// class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
//   late AnimationController animationController;
//   late AnimationController rotateController;
//   late Animation<AlignmentGeometry> alignmentAnimation;
//   late Animation<double> animation;
//
//   @override
//   void initState() {
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 3));
//
//     alignmentAnimation = Tween<AlignmentGeometry>(
//         begin: Alignment.bottomLeft, end: Alignment.topRight)
//         .animate(animationController)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           rotateController.reset();
//           rotateController.stop();
//         }
//       });
//
//     rotateController = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 200));
//     animation = Tween<double>(begin: 0, end: 2 * pi).animate(CurvedAnimation(
//       parent: rotateController,
//       curve: Curves.easeIn,
//       reverseCurve: Curves.easeOut,
//     ))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         print("ANIMATION STATUS:$status");
//       });
//
//     animationController.forward();
//     rotateController.forward();
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Task"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 250.0,
//               height: 250.0,
//               color: Colors.red,
//               child: AlignTransition(
//                 widthFactor: 2.0,
//                 heightFactor: 2.0,
//                 alignment: alignmentAnimation,
//                 child: Transform.rotate(
//                   angle: rotateController.value,
//                   child: const Icon(
//                     Icons.add_box,
//                     size: 50,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
