import 'dart:math';

import 'package:flutter/material.dart';

class GestureDetectorApp extends StatefulWidget {
  const GestureDetectorApp({Key? key}) : super(key: key);

  @override
  State<GestureDetectorApp> createState() => _GestureDetectorAppState();
}

class _GestureDetectorAppState extends State<GestureDetectorApp> {

  double _left = 0;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: _left,
            top: _top,
            child: GestureDetector(
                onTap: () => print('I was tapped!'),
                onPanUpdate: (details) => setState(() {
                  _top = max(0, _top + details.delta.dy);
                  _left = max(0, _left + details.delta.dx);
                }),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                )
            ),
          ),
        ],
      ),
    );
  }
}
