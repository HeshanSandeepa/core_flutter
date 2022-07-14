import 'package:flutter/material.dart';

class SizeTransitionApp extends StatefulWidget {
  const SizeTransitionApp({Key? key}) : super(key: key);

  @override
  State<SizeTransitionApp> createState() => _SizeTransitionAppState();
}

class _SizeTransitionAppState extends State<SizeTransitionApp>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
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
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
        child: SizeTransition(
          sizeFactor: _animation,
          axis: Axis.vertical,
          axisAlignment: -1,
          child: const Center(
            child: FlutterLogo(size: 200.0),
          ),
        ),
      ),
    );
  }
}
