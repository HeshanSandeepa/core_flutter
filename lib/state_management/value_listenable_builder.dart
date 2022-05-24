import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/widgets/ValueListenableBuilder-class.html
class ValueListenableBuilderApp extends StatefulWidget {
  const ValueListenableBuilderApp({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  State<ValueListenableBuilderApp> createState() =>
      _ValueListenableBuilderAppState();
}

class _ValueListenableBuilderAppState extends State<ValueListenableBuilderApp> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final Widget goodJob = const Text('Good job!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ValueListenableBuilder<int>(
              builder: (BuildContext context, int value, Widget? child) {
                // This builder will only get called when the _counter
                // is updated.
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('$value'),
                    child!,
                  ],
                );
              },
              valueListenable: _counter,
              // The child parameter is most helpful if the child is
              // expensive to build and does not depend on the value from
              // the notifier.
              child: goodJob,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () => _counter.value += 1,
      ),
    );
  }
}
