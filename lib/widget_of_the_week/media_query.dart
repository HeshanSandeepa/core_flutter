import 'package:flutter/material.dart';

class MediaQueryApp extends StatefulWidget {
  const MediaQueryApp({Key? key}) : super(key: key);

  @override
  State<MediaQueryApp> createState() => _MediaQueryAppState();
}

class _MediaQueryAppState extends State<MediaQueryApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: Center(
          child: Container(
        height: size.height / 2,
        width: size.width / 2,
        color: Colors.red,
      )),
    );
  }
}
