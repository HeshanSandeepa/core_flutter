import 'package:flutter/material.dart';

// great for adding gaps between widgets
class SizedBoxApp extends StatefulWidget {
  const SizedBoxApp({Key? key}) : super(key: key);

  @override
  State<SizedBoxApp> createState() => _SizedBoxAppState();
}

class _SizedBoxAppState extends State<SizedBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 100,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 100,
          ),
          SizedBox.expand(),
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 100,
          ),
        ],
      ),
    );
  }
}
