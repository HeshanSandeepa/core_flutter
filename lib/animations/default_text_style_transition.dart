import 'package:flutter/material.dart';

class DefaultTextStyleTransitionApp extends StatefulWidget {
  const DefaultTextStyleTransitionApp({Key? key}) : super(key: key);

  @override
  State<DefaultTextStyleTransitionApp> createState() =>
      _DefaultTextStyleTransitionAppState();
}

class _DefaultTextStyleTransitionAppState
    extends State<DefaultTextStyleTransitionApp> with TickerProviderStateMixin {
  late AnimationController _controller;
  late TextStyleTween _styleTween;
  late CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _styleTween = TextStyleTween(
      begin: const TextStyle(
          fontSize: 50, color: Colors.blue, fontWeight: FontWeight.w900),
      end: TextStyle(
          fontSize: 50,
          color: Colors.blue.shade200,
          fontWeight: FontWeight.w100),
    );
    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _styleTween.animate(_curvedAnimation),
          child: const Text('Flutter'),
        ),
      ),
    );
  }
}
