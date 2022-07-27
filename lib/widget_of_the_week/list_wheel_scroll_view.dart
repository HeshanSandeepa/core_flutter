import 'package:flutter/material.dart';

class ListWheelScrollViewApp extends StatefulWidget {
  const ListWheelScrollViewApp({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewApp> createState() =>
      _SListWheelScrollViewAppState();
}

class _SListWheelScrollViewAppState extends State<ListWheelScrollViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListWheelScrollView(
          itemExtent: 100,
          clipBehavior: Clip.antiAlias,
          children: const [
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 1',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 2',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 3',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 4',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 5',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 6',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 7',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Item 8',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
