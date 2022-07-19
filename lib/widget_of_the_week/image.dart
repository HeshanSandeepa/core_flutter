import 'package:flutter/material.dart';

class ImageApp extends StatefulWidget {
  const ImageApp({Key? key}) : super(key: key);

  @override
  State<ImageApp> createState() => _ImageAppState();
}

class _ImageAppState extends State<ImageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          )),
    );
  }
}
