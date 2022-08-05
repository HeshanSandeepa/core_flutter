import 'package:flutter/material.dart';

class InteractiveViewerApp extends StatefulWidget {
  const InteractiveViewerApp({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerApp> createState() => _InteractiveViewerAppState();
}

class _InteractiveViewerAppState extends State<InteractiveViewerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(10.0),
            minScale: 0.1,
            maxScale: 2.6,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.orange, Colors.green],
                  stops: <double>[0.0, 1.0],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
