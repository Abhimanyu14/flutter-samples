import 'dart:math';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = (min(size.width, size.height) / 2) - 24.0;
    final center = Offset(size.width / 2, size.height / 2);

    final yellowPaint = Paint()..color = Colors.yellow;
    final outlinePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;
    final redPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0
      ..strokeCap = StrokeCap.round;

    // Smiley background
    canvas.drawCircle(
      center,
      radius,
      yellowPaint,
    );

    // Smile
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius / 2),
      pi / 6,
      pi / 1.5,
      false,
      outlinePaint,
    );

    // Eyes
    canvas.drawCircle(
      Offset(center.dx - radius / 3, center.dy - radius / 3),
      10,
      Paint(),
    );
    canvas.drawCircle(
      Offset(center.dx + radius / 3, center.dy - radius / 3),
      10,
      Paint(),
    );

    // Marker
    canvas.drawLine(
      const Offset(100.0, 0.0),
      const Offset(100.0, 40.0),
      redPaint,
    );
    canvas.drawLine(
      const Offset(0.0, 100.0),
      const Offset(40.0, 100.0),
      redPaint,
    );
    canvas.drawLine(
      const Offset(200.0, 100.0),
      const Offset(160.0, 100.0),
      redPaint,
    );
    canvas.drawLine(
      const Offset(100.0, 200.0),
      const Offset(100.0, 160.0),
      redPaint,
    );

    // Border
    canvas.drawRect(
      Rect.fromPoints(
        Offset.zero,
        const Offset(200.0, 200.0),
      ),
      outlinePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
