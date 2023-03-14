import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyPainter extends CustomPainter {
  double radius;
  Color mycolor;

  MyPainter({required this.mycolor, required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    final cornerSize = Size.square(radius * 2);
    var paint = Paint();
    paint.color = mycolor;

    var path = Path();
    paint.color = mycolor;
    path.addArc(
      Offset(0, size.height) & cornerSize,
      // 180 degree startAngle (left of circle)
      math.pi,
      // -90 degree sweepAngle (counter-clockwise to the bottom)
      math.pi / 2,
    );
    path.arcTo(
      Offset(size.width - radius, size.height) & cornerSize,
      -math.pi / 2,
      math.pi / 2,
      false,
    );
    path.lineTo(size.width + radius, 0);
    path.lineTo(0, 0);
    canvas.drawPath(
      path,
      paint,
    );
  }

  /* void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = mycolor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 6;

    var path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.addArc(
      Offset(size.width - 37, size.height) & const Size.fromRadius(20 * 2),
      -math.pi / 2,
      -math.pi / 2,
    );

    path.arcTo(Offset(0, size.height - 12) & const Size.fromRadius(20 * 2),
        math.pi / 10, -math.pi / 2, false);

    //path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  } */

  @override
  bool shouldRepaint(covariant MyPainter oldDelegate) =>
      oldDelegate.mycolor != mycolor;
}
