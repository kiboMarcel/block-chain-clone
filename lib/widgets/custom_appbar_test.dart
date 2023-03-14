import 'package:flutter/material.dart';
import 'dart:math' as math;

class InvertedRoundedRectanglePainter extends CustomPainter {
  InvertedRoundedRectanglePainter({
    required this.radius,
    required this.color,
  });

  final double radius;
  final Color color;

  /*  @override
  void paint(Canvas canvas, Size size) {
    final cornerSize = Size.square(radius * 2);
    canvas.drawPath(
      Path()
        ..addArc(
          // top-left arc
          Offset(0, -radius) & cornerSize,
          // 180 degree startAngle (left of circle)
          math.pi,
          // -90 degree sweepAngle (counter-clockwise to the bottom)
          -math.pi / 2,
        )
        ..arcTo(
          // top-right arc
          Offset(size.width - cornerSize.width, -radius) & cornerSize,
          // 90 degree startAngle (bottom of circle)
          math.pi / 2,
          // -90 degree sweepAngle (counter-clockwise to the right)
          -math.pi / 2,
          false,
        )
        // bottom right of painter
        ..lineTo(size.width, size.height)
        // bottom left of painter
        ..lineTo(0, size.height),
      Paint()..color = color,
    );
  } */

  @override
  void paint(Canvas canvas, Size size) {
    final cornerSize = Size.square(radius * 2);
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;
    var path = Path();

    //path.addRect(Rect.fromLTWH(0, 0, size.width, 98));

    /*path.lineTo(size.width, 0);
      path.lineTo(0, 0);*/
    path.lineTo(0, 98);
    path.addArc(
      Offset(0, 80) & cornerSize,
      math.pi,
      math.pi / 2,
    );

    path.arcTo(
      Offset(size.width - 42, 80) & cornerSize,
      -math.pi / 2,
      math.pi / 2,
      false,
    );
    path.lineTo(size.width, -10);
    path.lineTo(size.width, -10);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(InvertedRoundedRectanglePainter oldDelegate) =>
      oldDelegate.radius != radius || oldDelegate.color != color;
}
