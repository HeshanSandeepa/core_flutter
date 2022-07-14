import 'package:flutter/material.dart';

class AlignTransitionApp extends StatefulWidget {
  const AlignTransitionApp({Key? key}) : super(key: key);

  @override
  State<AlignTransitionApp> createState() => _AlignTransitionAppState();
}

class _AlignTransitionAppState extends State<AlignTransitionApp>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ),
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
        title: const Text('Align Transition'),
      ),
      body: Center(
        child: AlignTransition(
          alignment: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
