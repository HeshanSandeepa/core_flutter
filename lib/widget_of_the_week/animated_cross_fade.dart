import 'package:flutter/material.dart';

class AnimatedCrossFadeApp extends StatefulWidget {
  const AnimatedCrossFadeApp({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeApp> createState() => _AnimatedCrossFadeAppState();
}

class _AnimatedCrossFadeAppState extends State<AnimatedCrossFadeApp> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.yellow),
        ],
      ),
      appBar: AppBar(
        title: const Text('Flutter Selectable Text App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: const FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 300.0),
                secondChild: const FlutterLogo(
                    style: FlutterLogoStyle.stacked, size: 300.0),
                crossFadeState: _showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showFirst = !_showFirst;
                    });
                  },
                  child: const Text('Change')),
            ],
          ),
        ),
      ),
    );
  }
}
