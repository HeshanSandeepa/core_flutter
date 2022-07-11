import 'package:flutter/material.dart';

class DraggableScrollableSheetApp extends StatefulWidget {
  const DraggableScrollableSheetApp({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetApp> createState() =>
      _DraggableScrollableSheetAppState();
}

class _DraggableScrollableSheetAppState
    extends State<DraggableScrollableSheetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Draggable Scrollable Sheet'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox.expand(
            child: DraggableScrollableSheet(
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('Item $index'));
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
