import 'package:flutter/material.dart';

class IgnorePointerApp extends StatefulWidget {
  const IgnorePointerApp({Key? key}) : super(key: key);

  @override
  State<IgnorePointerApp> createState() => _IgnorePointerAppState();
}

class _IgnorePointerAppState extends State<IgnorePointerApp> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ElevatedButton(
          onPressed: () {
            setIgnoring(!ignoring);
          },
          child: Text(
            ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: IgnorePointer(
            ignoring: ignoring,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Ignoring: $ignoring'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click me!'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
