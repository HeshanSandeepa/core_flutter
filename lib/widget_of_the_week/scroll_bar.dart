import 'package:flutter/material.dart';

class ScrollBarApp extends StatefulWidget {
  const ScrollBarApp({Key? key}) : super(key: key);

  @override
  State<ScrollBarApp> createState() => _ScrollBarAppState();
}

class _ScrollBarAppState extends State<ScrollBarApp> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ScrollBar'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
              children: <Widget>[
                SizedBox(
                    width: constraints.maxWidth / 2,
                    child: Scrollbar(
                      trackVisibility: true,
                      controller: _firstController,
                      child: ListView.builder(
                          controller: _firstController,
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Scrollable 1 : Index $index'),
                            );
                          }),
                    )),
                SizedBox(
                    width: constraints.maxWidth / 2,
                    child: Scrollbar(
                      trackVisibility: true,
                      child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                height: 50,
                                color: index.isEven
                                    ? Colors.amberAccent
                                    : Colors.blueAccent,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Scrollable 2 : Index $index'),
                                ));
                          }),
                    )),
              ],
            );
          })),
    );
  }
}
