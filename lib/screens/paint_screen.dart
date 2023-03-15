import 'package:flutter/material.dart';

import '../widgets/paint_test.dart';

class PaintScreen extends StatefulWidget {
  const PaintScreen({super.key});

  @override
  State<PaintScreen> createState() => _PaintScreenState();
}

class _PaintScreenState extends State<PaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CustomPaint(
            painter: MyPainter(mycolor: Colors.purple, radius: 30),
            child: const SizedBox(
              width: 200,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
