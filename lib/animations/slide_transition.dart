import 'package:flutter/material.dart';

class SlideTransitionApp extends StatefulWidget {
  const SlideTransitionApp({Key? key}) : super(key: key);

  @override
  State<SlideTransitionApp> createState() => _SlideTransitionAppState();
}

class _SlideTransitionAppState extends State<SlideTransitionApp>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

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
        child: SlideTransition(
          position: _offsetAnimation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
