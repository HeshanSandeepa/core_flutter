import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=LPe56fezmoo
class RichTextApp extends StatefulWidget {
  const RichTextApp({Key? key}) : super(key: key);

  @override
  State<RichTextApp> createState() => _RichTextAppState();
}

class _RichTextAppState extends State<RichTextApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rich Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                  text: 'bold',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.green)),
              TextSpan(text: ' world!'),
            ],
          ),
        ),
      ),
    );
  }
}
