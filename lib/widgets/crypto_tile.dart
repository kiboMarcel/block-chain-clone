import 'package:flutter/material.dart';

class CryptoTile extends StatelessWidget {
  final String title;
  final Widget leading;
  const CryptoTile({super.key, required this.title, required this.leading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: leading,
        title: Text(title),
        trailing: Column(
          children: const [
            Text('£4,123.147'),
            Text(
              '12%',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
