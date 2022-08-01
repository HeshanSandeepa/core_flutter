import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedWidgetApp extends StatefulWidget {
  const AnimatedWidgetApp({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetApp> createState() => _AnimatedWidgetAppState();
}

class _AnimatedWidgetAppState extends State<AnimatedWidgetApp>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    value: 10,
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ButtonAnimator(listenable: _controller),
          )),
    );
  }
}

class ButtonAnimator extends AnimatedWidget {
  ButtonAnimator({required Listenable listenable})
      : super(listenable: listenable);

  Animation<double> get _width => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _width,
        child: OutlinedButton(
          onPressed: () {},
          child: const Text('Click Me'),
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: _width.value, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
