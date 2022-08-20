import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class Example21 extends StatefulWidget {
  const Example21({Key? key}) : super(key: key);

  @override
  State<Example21> createState() => _Example21State();
}

class _Example21State extends State<Example21> {
  late FlipCardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("flip_card: ^0.6.0"),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: FlipCard(
              controller: _controller,
              direction: FlipDirection.HORIZONTAL,
              speed: 2000,
              onFlipDone: (status) {
                print(status);
              },
              front: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Front', style: Theme.of(context).textTheme.headline1),
                    Text('Click here to flip back',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              ),
              back: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Back', style: Theme.of(context).textTheme.headline1),
                    Text('Click here to flip front',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
