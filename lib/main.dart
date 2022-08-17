import 'package:animations_course/screens/example_eight.dart';
import 'package:animations_course/screens/example_five.dart';
import 'package:animations_course/screens/example_four.dart';
import 'package:animations_course/screens/example_one.dart';
import 'package:animations_course/screens/example_seven.dart';
import 'package:animations_course/screens/example_six.dart';
import 'package:animations_course/screens/example_three.dart';
import 'package:animations_course/screens/example_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleFourth(),
    );
  }
}
