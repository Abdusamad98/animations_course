import 'package:animations_course/constants.dart';
import 'package:animations_course/screens/example19.dart';
import 'package:animations_course/screens/example20.dart';
import 'package:animations_course/screens/example21.dart';
import 'package:animations_course/screens/example22.dart';
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
import 'package:animations_course/screens/home_screen.dart';
import 'package:animations_course/screens/task_screen.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case firstScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleOne());
      case secondScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTwo());
      case thirdScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThree());
      case fourthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFourth());
      case fifthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFive());
      case sixthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSix());
      case seventhScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSeven());
      case eighthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEight());
      case ninthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleNine());
      case tenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTen());
      case eleventhScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEleven());
      case twelveScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTwelve());
      case thirteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThirteen());
      case fourteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExplicitFourteen());
      case fifteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFifteen());
      case sixteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSixteen());
      case seventeenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSeventeen());
      case eighteenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEighteen());
      case nineteenthScreenRoute:
        return MaterialPageRoute(builder: (_) => Example19());
      case twentyScreenRoute:
        return MaterialPageRoute(builder: (_) => Example20());
      case twentyFirstScreenRoute:
        return MaterialPageRoute(builder: (_) => Example21());
      case taskScreenRoute:
        return MaterialPageRoute(builder: (_) => TaskScreen());

      case twentySecondScreenRoute:
        return MaterialPageRoute(builder: (_) => Example22());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
