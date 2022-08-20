import 'package:flutter/material.dart';

class ExampleSeventeen extends StatefulWidget {
  const ExampleSeventeen({Key? key}) : super(key: key);

  @override
  State<ExampleSeventeen> createState() => _ExampleSeventeenState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ExampleSeventeenState extends State<ExampleSeventeen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FadeTransition"),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: FadeTransition(
            opacity: _animation,
            child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
          ),
        ),
      ),
    );
  }
}
