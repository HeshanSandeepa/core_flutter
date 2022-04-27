
import 'package:flutter/material.dart';

//https://api.flutter.dev/flutter/widgets/Draggable-class.html
class DraggableApp extends StatefulWidget {
  const DraggableApp({Key? key}) : super(key: key);

  @override
  State<DraggableApp> createState() => _DraggableAppState();
}

class _DraggableAppState extends State<DraggableApp> {
  int acceptedData = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Draggable'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
              child: const Icon(Icons.directions_run),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.pinkAccent,
              child: const Center(
                child: Text('Child When Dragging'),
              ),
            ),
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.lightGreenAccent,
              child: const Center(
                child: Text('Draggable'),
              ),
            ),
          ),
          DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                height: 100.0,
                width: 100.0,
                color: Colors.cyan,
                child: Center(
                  child: Text('Value is updated to: $acceptedData'),
                ),
              );
            },
            onAccept: (int data) {
              setState(() {
                acceptedData += data;
              });
            },
          ),
        ],
      ),
    );
  }
}
