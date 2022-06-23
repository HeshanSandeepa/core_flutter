import 'package:flutter/material.dart';

//https://api.flutter.dev/flutter/material/ReorderableListView-class.html
class ReorderableListApp extends StatefulWidget {
  const ReorderableListApp({Key? key}) : super(key: key);

  @override
  State<ReorderableListApp> createState() => _ReorderableListAppState();
}

class _ReorderableListAppState extends State<ReorderableListApp> {
  final List<int> _items = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Re-orderable List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ReorderableListView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          children: <Widget>[
            for (int index = 0; index < _items.length; index += 1)
              ListTile(
                key: Key('$index'),
                tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                title: Text('Item ${_items[index]}'),
              ),
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            });
          },
        ),
      ),
    );
  }
}
