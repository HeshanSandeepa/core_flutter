import 'dart:math';
import 'dart:math';

import 'package:flutter/material.dart';

class CustomPainterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomPainterAppState();
}

class CustomPainterAppState extends State<CustomPainterApp> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(painter: MyPainter(), child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Container(),
      ),),
    );
  }


}

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    // draw the body
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);

    //draw the mouth
    final smilePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 2) , 0, pi , false, smilePaint);

    // draw the eyes
    canvas.drawCircle(Offset(center.dx - radius / 2, center.dy - radius /2 ), 10, Paint());
    canvas.drawCircle(Offset(center.dx + radius / 2, center.dy - radius /2 ), 10, Paint());

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}




