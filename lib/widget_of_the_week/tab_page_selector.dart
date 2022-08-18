import 'package:flutter/material.dart';

class TabPageSelectorApp extends StatefulWidget {
  const TabPageSelectorApp({Key? key}) : super(key: key);

  @override
  State<TabPageSelectorApp> createState() => _TabPageSelectorAppState();
}

class _TabPageSelectorAppState extends State<TabPageSelectorApp>
    with SingleTickerProviderStateMixin {
  final int _numDots = 3;
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _numDots, vsync: this);
  }

  void _incrementCounter() {
    setState(() {
      (_controller.index == _numDots - 1)
          ? _controller.index = 0
          : _controller.index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You are on index: ${_controller.index}'),
            TabPageSelector(controller: _controller),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
