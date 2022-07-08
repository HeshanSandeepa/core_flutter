import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertApp extends StatefulWidget {
  const AlertApp({Key? key}) : super(key: key);

  @override
  State<AlertApp> createState() => _AlertAppState();
}

class _AlertAppState extends State<AlertApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Selectable Text App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('Alert'),
                            content: Text('This is Content'),
                            backgroundColor: Colors.blue,
                            elevation: 24.0,
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Ok'))
                            ],
                          ));
                },
                child: const Text('Alert')),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                            title: Text('Alert'),
                            content: Text('This is Content'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Ok'))
                            ],
                          ));
                },
                child: const Text('Cupertino Alert')),
          ],
        ),
      ),
    );
  }
}
