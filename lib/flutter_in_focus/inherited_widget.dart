import 'package:flutter/material.dart';

class ImageWidget extends InheritedWidget {
  final String baseImage;

  const ImageWidget({Key? key, required Widget child, required this.baseImage})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant ImageWidget oldWidget) {
    return baseImage != oldWidget.baseImage;
  }

  static ImageWidget of(BuildContext context) {
    final ImageWidget? imageWidget =
        context.dependOnInheritedWidgetOfExactType<ImageWidget>();
    assert(imageWidget != null, 'No FrogColor found in context');
    return imageWidget!;
  }
}

class InheritedWidgetsApp extends StatelessWidget {
  const InheritedWidgetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ImageWidget(
          child: Builder(builder: (BuildContext innerContext) {
            // ImageWidget? imageWidget = innerContext
            //     .dependOnInheritedWidgetOfExactType<ImageWidget>();
            //

            // this is typically replaced by static methods

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Center(child: Text(ImageWidget.of(innerContext).baseImage)),
            );
          }),
          baseImage: 'This is base Url'),
    );
  }
}
