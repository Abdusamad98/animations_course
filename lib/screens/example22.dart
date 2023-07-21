import 'dart:math';

import 'package:flutter/material.dart';

class Example22 extends StatefulWidget {
  const Example22({Key? key}) : super(key: key);

  @override
  State<Example22> createState() => _Example22State();
}

class _Example22State extends State<Example22>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);



    animation = Tween<Offset>(begin: Offset.zero, end: Offset(0.5, 1)).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: SizedBox(
        child: SlideTransition(
          position: animation,
          child: Container(
            color: Colors.blue,
            child: const FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}

//
//
// class _Example22State extends State<Example22>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<double> animation;
//
//   @override
//   void initState() {
//     animationController =
//     AnimationController(vsync: this, duration: const Duration(seconds: 5))
//       ..repeat(reverse: true);
//
//     animation =
//     CurvedAnimation(parent: animationController, curve: Curves.bounceIn)
//       ..addListener(() {
//         setState(() {});
//       });
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Title"),
//       ),
//       body: SizedBox(
//         child: SizeTransition(
//           axis: Axis.horizontal,
//           axisAlignment: -1,
//           sizeFactor: animation,
//           child: Container(
//             color: Colors.blue,
//             child: const FlutterLogo(
//               size: 200,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
