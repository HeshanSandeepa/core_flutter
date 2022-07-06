import 'package:flutter/material.dart';

class ListViewApp extends StatefulWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  State<ListViewApp> createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[900, 400, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fractionally Sized Box'),
      ),
      body: Padding(
        child: ListView.separated(
          reverse: true,
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
