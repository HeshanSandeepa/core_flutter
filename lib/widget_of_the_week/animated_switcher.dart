import 'package:flutter/material.dart';

//https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html
class AnimatedSwitcherApp extends StatefulWidget {
  const AnimatedSwitcherApp({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherApp> createState() => _AnimatedSwitcherAppState();
}

class _AnimatedSwitcherAppState extends State<AnimatedSwitcherApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animated Switcher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  '$_count',
                  // This key causes the AnimatedSwitcher to interpret this as a "new"
                  // child each time the count changes, so that it will begin its animation
                  // when the count changes.
                  key: ValueKey<int>(_count),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              ElevatedButton(
                child: const Text('Increment'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
