import 'package:flutter/material.dart';

class AnimatedPaddingApp extends StatefulWidget {
  const AnimatedPaddingApp({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingApp> createState() => _AnimatedPaddingAppState();
}

class _AnimatedPaddingAppState extends State<AnimatedPaddingApp> {
  double padValue = 0.0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              color: Colors.blue,
            ),
          ),
          Text('Padding: $padValue'),
          ElevatedButton(
              child: const Text('Change padding'),
              onPressed: () {
                _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
              }),
        ],
      ),
    );
  }
}
