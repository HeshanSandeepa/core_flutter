import 'dart:math';

import 'package:flutter/material.dart';

class InheritedWidgetApp extends StatefulWidget {
  @override
  _InheritedWidgetAppState createState() => _InheritedWidgetAppState();
}

class _InheritedWidgetAppState extends State<InheritedWidgetApp> {
  final Random _random = Random();
  int _score = 10;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Info(
            score: _score,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.score),
                CurrentScore(),
              ],
            ),
          ),
          OutlinedButton(
            child: const Text('Change'),
            onPressed: () {
              setState(() {
                _score = _random.nextInt(100);
              });
            },
          ),
        ],
      ),
    );
  }
}

class CurrentScore extends StatelessWidget {
  const CurrentScore();

  @override
  Widget build(BuildContext context) {
    print('CurrentScore rebuilt');
    final Info? info = Info.of(context);

    int score = info!.score;

    return Text(score.toString());
  }
}

class Info extends InheritedWidget {
  final int score;
  const Info({
    required this.score,
    required Widget child,
  }) : super(child: child);

  static Info? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>();
  }

  @override
  bool updateShouldNotify(covariant Info oldWidget) {
    return oldWidget.score != score;
  }
}
