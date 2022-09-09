import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AnimatedContainerAppState();
  }
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  bool _bigger = false;

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
            AnimatedContainer(
              width: _bigger ? 500 : 100,
              child: Image.asset('assets/images/flat_logo.png'),
              duration: Duration(seconds: 3),
              curve: Curves.easeInCirc,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  _bigger = !_bigger;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
