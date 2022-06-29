import 'package:flutter/material.dart';

class StackedIndexApp extends StatefulWidget {
  const StackedIndexApp({Key? key}) : super(key: key);

  @override
  State<StackedIndexApp> createState() => _StackedIndexAppState();
}

class _StackedIndexAppState extends State<StackedIndexApp> {
  int index = 0;
  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Container(
              color: Colors.green,
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
              )),
          Container(
              color: Colors.redAccent,
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
              )),
          Container(
              color: Colors.blue,
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
              )),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          color: Colors.pink[300],
          child: Text(
            'Red',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        FlatButton(
          color: Colors.pink[300],
          child: Text(
            'Green',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        FlatButton(
          color: Colors.pink[300],
          child: Text(
            'Blue',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
