import 'package:flutter/material.dart';

class AnimatedOpacityApp extends StatefulWidget {
  const AnimatedOpacityApp({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityApp> createState() => _AnimatedOpacityAppState();
}

class _AnimatedOpacityAppState extends State<AnimatedOpacityApp> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: SizedBox(height: 200, width: 200, child: const FlutterLogo()),
              ),
              ElevatedButton(
                onPressed: _changeOpacity,
                child: const Text('Fade Logo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
