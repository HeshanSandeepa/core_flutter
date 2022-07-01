import 'package:flutter/material.dart';

class AnimatedPositionedApp extends StatefulWidget {
  const AnimatedPositionedApp({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedApp> createState() => _AnimatedPositionedAppState();
}

class _AnimatedPositionedAppState extends State<AnimatedPositionedApp> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selected = !_selected;
                });
              },
              child: Container(
                color: Colors.green,
                child: const Center(child: Text('Tap me')),
              ),
            ),
            width: _selected ? 200.0 : 50.0,
            height: _selected ? 50.0 : 200.0,
            top: _selected ? 50.0 : 150.0,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          )
        ],
      ),
    );
  }
}
