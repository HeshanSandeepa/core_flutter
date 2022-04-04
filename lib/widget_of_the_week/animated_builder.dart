import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart';
// https://docs.flutter.dev/development/ui/widgets/animation
class MyAnimatedBuilder extends StatefulWidget {
  const MyAnimatedBuilder({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAnimatedBuilderState();
  }
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        child: Center(
          child: Image.asset(
            'assets/images/flat_logo.png',
            width: 150,
            height: 150,
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
