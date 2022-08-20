import 'package:animations_course/constants.dart';
import 'package:animations_course/screens/example8.dart';
import 'package:animations_course/screens/example18.dart';
import 'package:animations_course/screens/example11.dart';
import 'package:animations_course/screens/example15.dart';
import 'package:animations_course/screens/example5.dart';
import 'package:animations_course/screens/example4.dart';
import 'package:animations_course/screens/example14.dart';
import 'package:animations_course/screens/example9.dart';
import 'package:animations_course/screens/example1.dart';
import 'package:animations_course/screens/example7.dart';
import 'package:animations_course/screens/example17.dart';
import 'package:animations_course/screens/example6.dart';
import 'package:animations_course/screens/example16.dart';
import 'package:animations_course/screens/example10.dart';
import 'package:animations_course/screens/example13.dart';
import 'package:animations_course/screens/example3.dart';
import 'package:animations_course/screens/example12.dart';
import 'package:animations_course/screens/example2.dart';
import 'package:animations_course/screens/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: homeRoute,
    );
  }
}
