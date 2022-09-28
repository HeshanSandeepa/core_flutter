import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StreamFutureLoopApp extends StatefulWidget {
  const StreamFutureLoopApp({Key? key}) : super(key: key);

  @override
  State<StreamFutureLoopApp> createState() => _StreamFutureLoopAppState();
}

class _StreamFutureLoopAppState extends State<StreamFutureLoopApp> {
  final intStream = StreamController<int>();
  late Stream<int> _intStream;

  @override
  void initState() {
    _intStreamService();
    _intStream = intStream.stream;
    super.initState();
  }

  void _intStreamService() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {

        int value = Random().nextInt(150);
        intStream.add(value);

        getTotal(_intStream);


      },
    );
  }

  // 06. async in foo loop
  Future<void> getTotal(Stream<int> numbers) async {
    await for (final value in numbers) {
      print(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Streams'),
      ),
      body: StreamBuilder<int>(
        stream: _intStream,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                Text('Waiting for some pets...')
              ],
            ),
          );
        },
      ),
    );
  }
}
