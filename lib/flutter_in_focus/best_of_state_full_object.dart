import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=AqCMFXEmf3w&list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2&index=6

// https://medium.com/@JediPixels/beginning-flutter-widget-tree-and-element-tree-5e2ab953beef

class StateFullObjectApp extends StatefulWidget {
  final String name;

  const StateFullObjectApp({Key? key, required this.name}) : super(key: key);

  @override
  State<StateFullObjectApp> createState() => _StateFullObjectAppState();


}

class _StateFullObjectAppState extends State<StateFullObjectApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateFull Object App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text('${widget.name} : $index'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = index + 1;
                  });
                },
                child: const Text('Tap Me'))
          ],
        ),
      ),
    );
  }
}
