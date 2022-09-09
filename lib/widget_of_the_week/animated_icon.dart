
import 'package:flutter/material.dart';

class AnimatedIconApp extends StatefulWidget {
  const AnimatedIconApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AnimatedIconState();
  }
}

class _AnimatedIconState extends State<AnimatedIconApp>
    with TickerProviderStateMixin {
  bool _flag = true;

  late Animation<double> _myAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Icon"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedIcon(
              progress: _myAnimation,
              icon: AnimatedIcons.add_event,
              size: 60,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                if (_flag) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }

                _flag = !_flag;
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
