import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButoomNavigationBarItem extends StatelessWidget {
  const ButoomNavigationBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.house,
              color: Colors.black,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Home',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.solidChartBar,
              color: Colors.black,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Price',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ],
    );
  }
}
