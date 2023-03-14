import 'package:flutter/material.dart';

class IconHome extends StatelessWidget {
  final Widget icon;
  final String name;
  const IconHome({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: icon,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(name),
      ],
    );
  }
}
