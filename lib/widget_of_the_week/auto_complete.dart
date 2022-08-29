import 'package:flutter/material.dart';

class AutoCompleteApp extends StatefulWidget {
  const AutoCompleteApp({Key? key}) : super(key: key);

  @override
  State<AutoCompleteApp> createState() => _AutoCompleteAppState();
}

class _AutoCompleteAppState extends State<AutoCompleteApp> {
  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rich Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return _kOptions.where((String option) {
              return option.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String selection) {
            debugPrint('You just selected $selection');
          },
        ),
      ),
    );
  }
}
