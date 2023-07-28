import 'package:flutter/material.dart';

class LargeTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const LargeTextWidget({
    required this.text,
    this.size = 30,
    this.color = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
