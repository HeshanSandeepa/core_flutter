import 'package:flutter/material.dart';

class ClipOvalApp extends StatefulWidget {
  const ClipOvalApp({Key? key}) : super(key: key);

  @override
  State<ClipOvalApp> createState() => _ClipOvalAppState();
}

class _ClipOvalAppState extends State<ClipOvalApp> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Clip Oval',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                'https://www.kindacode.com/wp-content/uploads/2020/12/the-cat.jpg',
                width: 300,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ClipOval(
              child: Image.network(
                'https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
