import 'dart:math';

import 'package:flutter/material.dart';

class Example19 extends StatefulWidget {
  const Example19({Key? key}) : super(key: key);

  @override
  State<Example19> createState() => _Example19State();
}

class _Example19State extends State<Example19> {
  bool showFirstContainer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Switcher"),
        ),
        body:
        // Center(
        //   child: AnimatedSwitcher(
        //     switchInCurve: Curves.bounceIn,
        //     switchOutCurve: Curves.bounceIn,
        //     duration: const Duration(seconds: 3),
        //     transitionBuilder: (widget, animation) => ScaleTransition(
        //       scale: animation,
        //       child: widget,
        //     ),
        //     child: showFirstContainer
        //         ? Container(
        //             key: UniqueKey(),
        //             height: 120,
        //             width: 120,
        //             color: Colors.blue,
        //           )
        //         : Container(
        //             key: UniqueKey(),
        //             height: 120,
        //             width: 120,
        //             color: Colors.red,
        //           ),
        //   ),
        // ),
        Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            transitionBuilder: (widget, animation) => RotationTransition(
              turns: animation,
              child: widget,
            ),
            switchOutCurve: Curves.easeInOutCubic,
            switchInCurve: Curves.fastLinearToSlowEaseIn,
            child: showFirstContainer
                ? Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.blue,
                    ),
                    key: UniqueKey(),
                    height: 150,
                    width: 100,
                  )
                : Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.red,
                    ),
                    key: UniqueKey(),
                    height: 100,
                    width: 150,
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              setState(() {});
              showFirstContainer = !showFirstContainer;
            },
            label: const Text('Press Me')));
  }
}
