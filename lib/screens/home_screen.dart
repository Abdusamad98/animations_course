
import 'package:animations_course/constants.dart';
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
    nineteenthScreenRoute,
    twentyScreenRoute,
    twentyFirstScreenRoute,
    twentySecondScreenRoute
  ];
  double x = 0;
  double y = 0;
  double z = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Transform.translate(
              offset: const Offset(10.0, 20.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFF7F7F7F),
                child: const Text('Quarter'),
              ),
            ),

            Center(
              child: Transform(
                transform: Matrix4(
                  1,0,0,0,
                  0,1,0,0,
                  0,0,1,0,
                  0,0,0,1,
                )..rotateX(x)..rotateY(y)..rotateZ(z),
                alignment: FractionalOffset.center,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      y = y - details.delta.dx / 100;
                      x = x + details.delta.dy / 100;
                    });
                  },
                  child: Container(
                    color: Colors.red,
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
              ),
            ),
            ...List.generate(
              routeNames.length,
              (index) => ListTile(
                title: Text("Example ${index + 1}"),
                onTap: () {
                  Navigator.pushNamed(context, routeNames[index]);
                },
              ),
            ),
            myButton(() {
              Navigator.pushNamed(context, taskScreenRoute);
            })
          ],
        ),
      ),
    );
  }

  Widget myButton(VoidCallback onTap) => Container(
        margin: const EdgeInsets.all(16),
        child: TextButton(
            onPressed: onTap,
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Center(
                child: Text(
                  "Task screen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )),
      );
}
