import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

class CAppBar extends CustomPainter {
  double radius;
  List<Color> mycolors;

  CAppBar({required this.mycolors, required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    final cornerSize = Size.square(radius);
    var paint = Paint();

    paint.shader = ui.Gradient.linear(
      Offset(size.width, 0),
      Offset(size.width / 3, 0),
      [mycolors[0], mycolors[1]],
    );

    var path = Path();
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
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CAppBar oldDelegate) =>
      oldDelegate.mycolors != mycolors || oldDelegate.radius != radius;
}
