import 'package:flutter/material.dart';

// https://www.javatpoint.com/dart-generators
class GeneratorApp extends StatefulWidget {
  const GeneratorApp({Key? key}) : super(key: key);

  @override
  State<GeneratorApp> createState() => _GeneratorAppState();
}

class _GeneratorAppState extends State<GeneratorApp> {
  Iterable<int> oddNumber(int num) sync* {
    int k = num;
    while (k >= 0) {
      if (k % 2 == 1) {
        yield k;
      }
      k--;
    }
  }

  Stream<int> asyncNaturalsTo(int num) async* {
    int k = 0;
    while (k < num) {
      // 'yield' statement
      yield k++;
    }
    k--;
  }

  @override
  void initState() {
    oddNumber(10).forEach((element) {
      print(element);
    });

    asyncNaturalsTo(10).forEach((element) {
      print(element);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generators'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Generator'),
      ),
    );
  }
}
