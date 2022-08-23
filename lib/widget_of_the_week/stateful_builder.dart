import 'package:flutter/material.dart';

class StateFulBuilderApp extends StatefulWidget {
  const StateFulBuilderApp({Key? key}) : super(key: key);

  @override
  State<StateFulBuilderApp> createState() => _StateFulBuilderAppState();
}

class _StateFulBuilderAppState extends State<StateFulBuilderApp> {
  @override
  Widget build(BuildContext context) {

    print('BUILD    -----------');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
            onPressed: () {
              int? selectedRadio = 0;
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        title: Text('Alert'),
                        content: StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return Column(
                              children: List<Radio>.generate(4, (int index) {
                                return Radio<int>(
                                  value: index,
                                  groupValue: selectedRadio,
                                  onChanged: (int? value) {
                                    setState(() => selectedRadio = value);
                                  },
                                );
                              }),
                            );
                          },
                        ),
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
      ),
    );
  }
}
