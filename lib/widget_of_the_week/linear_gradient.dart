import 'package:flutter/material.dart';

class LinearGradientApp extends StatefulWidget {
  const LinearGradientApp({Key? key}) : super(key: key);

  @override
  State<LinearGradientApp> createState() => _LinearGradientAppState();
}

class _LinearGradientAppState extends State<LinearGradientApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rich Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
          child: const Center(
            child: Text(
              'From Night to Day',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
