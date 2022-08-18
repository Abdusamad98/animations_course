import 'package:animations_course/constants.dart';
import 'package:animations_course/screens/example_one.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> routeNames = [
    firstScreenRoute,
    secondScreenRoute,
    thirdScreenRoute,
    fourthScreenRoute,
    fifthScreenRoute,
    sixthScreenRoute,
    seventhScreenRoute,
    eighthScreenRoute,
    ninthScreenRoute,
    tenthScreenRoute,
    eleventhScreenRoute,
    twelveScreenRoute,
    thirteenScreenRoute,
    fourteenScreenRoute,
    fifteenScreenRoute,
    sixteenScreenRoute,
    seventeenthScreenRoute,
    eighteenthScreenRoute,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            routeNames.length,
            (index) => ListTile(
              title: Text("Example ${index + 1}"),
              onTap: () {
                Navigator.pushNamed(context, routeNames[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
