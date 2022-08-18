import 'package:animations_course/constants.dart';
import 'package:animations_course/screens/example_eight.dart';
import 'package:animations_course/screens/example_eighteen.dart';
import 'package:animations_course/screens/example_eleven.dart';
import 'package:animations_course/screens/example_fifteen.dart';
import 'package:animations_course/screens/example_five.dart';
import 'package:animations_course/screens/example_four.dart';
import 'package:animations_course/screens/example_fourteen.dart';
import 'package:animations_course/screens/example_nine.dart';
import 'package:animations_course/screens/example_one.dart';
import 'package:animations_course/screens/example_seven.dart';
import 'package:animations_course/screens/example_seventeen.dart';
import 'package:animations_course/screens/example_six.dart';
import 'package:animations_course/screens/example_sixteen.dart';
import 'package:animations_course/screens/example_ten.dart';
import 'package:animations_course/screens/example_thirteen.dart';
import 'package:animations_course/screens/example_three.dart';
import 'package:animations_course/screens/example_twelve.dart';
import 'package:animations_course/screens/example_two.dart';
import 'package:animations_course/screens/home_screen.dart';
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
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
