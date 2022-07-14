import 'package:flutter/material.dart';

class FadeTransitionApp extends StatefulWidget {
  const FadeTransitionApp({Key? key}) : super(key: key);

  @override
  State<FadeTransitionApp> createState() => _FadeTransitionAppState();
}

class _FadeTransitionAppState extends State<FadeTransitionApp>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

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
        title: const Text('Flutter Size Transition'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child:
              const Padding(padding: EdgeInsets.all(8), child: SizedBox(height: 300, width: 300, child: FlutterLogo())),
        ),
      ),
    );
  }
}
