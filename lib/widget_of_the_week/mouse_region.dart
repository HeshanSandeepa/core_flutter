import 'package:flutter/material.dart';

class MouseRegionApp extends StatefulWidget {
  const MouseRegionApp({Key? key}) : super(key: key);

  @override
  State<MouseRegionApp> createState() => _MouseRegionAppState();
}

class _MouseRegionAppState extends State<MouseRegionApp> {
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
        child: MouseRegion(
          onEnter: _incrementEnter,
          onHover: _updateLocation,
          onExit: _incrementExit,
          child: Container(
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                    'You have entered or exited this box this many times:'),
                Text(
                  '$_enterCounter Entries\n$_exitCounter Exits',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
