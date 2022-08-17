import 'package:animations_course/widgets/cupertino_action_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ExampleEight extends StatefulWidget {
  const ExampleEight({Key? key}) : super(key: key);

  @override
  State<ExampleEight> createState() => _ExampleEightState();
}

class _ExampleEightState extends State<ExampleEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoBottomModalSheet"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            if (Platform.isAndroid) {
              showCupertinoModalPopup<void>(
                barrierDismissible: true,
                context: context,
                builder: (BuildContext context) => CupertinoActionSheet(
                  actions: <Widget>[
                    CupertinoActionItem(
                      () {},
                      'Action 1',
                      Colors.blue,
                      buttonColor: Colors.white,
                    ),
                    CupertinoActionItem(
                      () {},
                      'Action 2',
                      Colors.blue,
                      buttonColor: Colors.white,
                    ),
                    CupertinoActionItem(
                      () {},
                      'Action 3',
                      Colors.blue,
                      buttonColor: Colors.white,
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: 'sf_regular',
                        color: Color(0xFF007AFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            } else {}
          },
          child: const Text("On Tap"),
        ),
      ),
    );
  }
}
