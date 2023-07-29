import 'package:flutter/material.dart';

class NormalTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const NormalTextWidget({
    required this.text,
    this.size = 16,
    this.color = Colors.black54,
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
