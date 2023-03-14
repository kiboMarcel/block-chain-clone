import 'package:flutter/material.dart';

class CurrencyStatus extends StatelessWidget {
  final Color color;
  const CurrencyStatus({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.upload,
          color: color,
          size: 23,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          '£ 35.61',
          style: TextStyle(color: color),
        ),
        const SizedBox(
          width: 3,
        ),
        CircleAvatar(
          radius: 2,
          backgroundColor: color,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          ' (15 %)',
          style: TextStyle(color: color),
        )
      ],
    );
  }
}
